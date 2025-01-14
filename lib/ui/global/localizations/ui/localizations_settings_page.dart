import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_localizations.dart';
import '../bloc/bloc.dart';
import '../localizations_delegates.dart';
import 'locale_item.dart';

class LocalizationsSettingPage extends StatelessWidget {
  const LocalizationsSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final supportedLocales = LocalizationsDelegates.instance!.supportedLocales!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.translate('title_languages')!,
        ),
      ),
      body: ListView.builder(
          itemCount: supportedLocales.length,
          itemBuilder: (bCtx, index) {
            final locale = supportedLocales.elementAt(index);
            return LocaleItem(
                locale: locale,
                onTap: () => BlocProvider.of<LocalizationsBloc>(context)
                    .add(LocaleChanged(locale: locale)));
          }),
    );
  }
}
