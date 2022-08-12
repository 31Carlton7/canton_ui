import 'package:canton_ui/canton_ui.dart';

class CantonUI extends StatelessWidget {
  const CantonUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CantonApp(
      title: 'CantonUI',
      home: Home(),
      primaryLightColor: CantonColors.blue,
      primaryDarkColor: CantonDarkColors.blue,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CantonScaffold(
      body: Column(
        children: const [
          ViewHeaderTwo(
            title: 'CantonUI',
          )
        ],
      ),
    );
  }
}
