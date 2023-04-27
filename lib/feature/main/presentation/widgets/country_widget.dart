import 'package:cached_network_image/cached_network_image.dart';
import 'package:countries/feature/main/domain/entities/country.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CountryWidget extends StatelessWidget {
  final Country country;

  const CountryWidget({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 8,
      color: Theme.of(context).cardColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _flag(country.flag),
          const SizedBox(height: 8),
          _countryName(country.name, country.officialName, context),
          const SizedBox(height: 8),
          _countryInfo(country, context),
          _bottonInfo(country, context),
        ],
      ),
    );
  }

  Widget _flag(String flagsUrl) {
    return SizedBox(
      width: double.infinity,
      child: CachedNetworkImage(
        imageUrl: flagsUrl,
        fit: BoxFit.fitWidth,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: const SizedBox(
            width: double.infinity,
            height: 200,
          ),
        ),
        errorWidget: (context, url, error) =>
            Image.asset('images/imageNotFound.png'),
      ),
    );
  }

  Widget _countryName(
      String commonName, String officialName, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          officialName,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 5),
        commonName == officialName
            ? const SizedBox()
            : Text(
                commonName,
                style: Theme.of(context).textTheme.bodySmall,
              )
      ],
    );
  }

  Widget _countryInfo(Country country, BuildContext context) {
    final String capital = country.capital.length == 1
        ? country.capital[0]
        : country.capital.toString();
    final String continents = country.continents.length == 1
        ? country.continents[0]
        : country.continents.toString();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Text(
                'Capital: $capital',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              )),
              Text(
                'Region: ${country.region}',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Continents: $continents',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                'Subregion: ${country.subregion}',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _bottonInfo(Country country, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
          color: country.independent ? Colors.green : Colors.red,
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(16))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    country.languages,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'Languages',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            const VerticalDivider(
              color: Colors.black,
              thickness: 1,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    country.population.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'Population',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            const VerticalDivider(
              color: Colors.black,
              thickness: 1,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    country.currenciesSymbol,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    country.currenciesName,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
