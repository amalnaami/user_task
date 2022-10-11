import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_task/providers/data_provider.dart';
import 'package:user_task/utils/localization/app_localizations.dart';

class DisconnectInternet extends ConsumerWidget {
  const DisconnectInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context).translate("no.internet.connection"),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            GestureDetector(
              onTap: () {
                ref.refresh(userDataProvider);
                ref.refresh(postDataProvider);
              },
              behavior: HitTestBehavior.opaque,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(12),
                child: Text(
                  AppLocalizations.of(context).translate("tap.to.retry"),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
