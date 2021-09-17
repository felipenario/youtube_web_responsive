import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';
import 'package:web_project/app/modules/shared/widgets/channel_button.dart';
import 'package:web_project/app/modules/shared/widgets/side_menu_button.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 231,
      padding: const EdgeInsets.only(top: 12),
      color: ytbDarkThemeSecondary,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SideMenuButton(icon: Icons.home, label: 'Início'),
              SideMenuButton(icon: Icons.explore, label: 'Explorar'),
              SideMenuButton(icon: Icons.subscriptions, label: 'Inscrições'),
              Divider(
                color: ytbDarkThemeIconColor,
                thickness: 0.25,
                endIndent: 18.48,
              ),
              SideMenuButton(icon: Icons.video_library, label: 'Bibilioteca'),
              SideMenuButton(icon: Icons.history, label: 'Histórico'),
              SideMenuButton(icon: Icons.slideshow, label: 'Seus vídeos'),
              SideMenuButton(
                  icon: Icons.watch_later, label: 'Assistir mais tarde'),
              SideMenuButton(
                  icon: Icons.thumb_up, label: 'Vídeos marcados com "Gostei"'),
              SideMenuButton(icon: Icons.expand_more, label: 'Mostrar mais'),
              Divider(
                color: ytbDarkThemeIconColor,
                thickness: 0.25,
                endIndent: 18.48,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Text(
                  'INSCRIÇÕES',
                  style: TextStyle(
                      color: ytbDarkThemeIconColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ChannelButton(),
              ChannelButton(),
              ChannelButton(),
              ChannelButton(),
              Divider(
                color: ytbDarkThemeIconColor,
                thickness: 0.25,
                endIndent: 18.48,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Text(
                  'MAIS DO YOUTUBE',
                  style: TextStyle(
                      color: ytbDarkThemeIconColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SideMenuButton(
                  icon: MaterialCommunityIcons.youtube,
                  label: 'Youtube Premium'),
              SideMenuButton(icon: Icons.local_movies, label: 'Filmes'),
              SideMenuButton(
                  icon: MaterialCommunityIcons.youtube_gaming, label: 'Jogos'),
              SideMenuButton(icon: Icons.sensors, label: 'Ao Vivo'),
              SideMenuButton(icon: Icons.lightbulb, label: 'Aprender'),
              SideMenuButton(icon: Icons.emoji_events, label: 'Esportes'),
              Divider(
                color: ytbDarkThemeIconColor,
                thickness: 0.25,
                endIndent: 18.48,
              ),
              SideMenuButton(icon: Icons.settings, label: 'Configurações'),
              SideMenuButton(icon: Icons.flag, label: 'Histórico de denúncias'),
              SideMenuButton(icon: Icons.help, label: 'Ajuda'),
              SideMenuButton(icon: Icons.feedback, label: 'Enviar feedback'),
              Divider(
                color: ytbDarkThemeIconColor,
                thickness: 0.25,
                endIndent: 18.48,
              ),
              Container(
                padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                height: 107,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Text(
                            'Sobre',
                            style: TextStyle(
                                color: ytbDarkThemeIconColor, fontSize: 13),
                          ),
                        ),
                        Text(
                          'Imprensa',
                          style: TextStyle(
                              color: ytbDarkThemeIconColor, fontSize: 13),
                        )
                      ],
                    ),
                    Text(
                      'Direitos autorais',
                      style:
                          TextStyle(color: ytbDarkThemeIconColor, fontSize: 13),
                    ),
                    Text(
                      'Entre em contato',
                      style:
                          TextStyle(color: ytbDarkThemeIconColor, fontSize: 13),
                    ),
                    Text(
                      'Criadores de conteúdo',
                      style:
                          TextStyle(color: ytbDarkThemeIconColor, fontSize: 13),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Text(
                            'Publicidade',
                            style: TextStyle(
                                color: ytbDarkThemeIconColor, fontSize: 13),
                          ),
                        ),
                        Text(
                          'Desenvolvedores',
                          style: TextStyle(
                              color: ytbDarkThemeIconColor, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                height: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Text(
                            'Termos',
                            style: TextStyle(
                                color: ytbDarkThemeIconColor, fontSize: 13),
                          ),
                        ),
                        Text(
                          'Privacidade',
                          style: TextStyle(
                              color: ytbDarkThemeIconColor, fontSize: 13),
                        ),
                      ],
                    ),
                    Text(
                      'Política e segurança',
                      style:
                          TextStyle(color: ytbDarkThemeIconColor, fontSize: 13),
                    ),
                    Text(
                      'Como funciona o YouTube',
                      style:
                          TextStyle(color: ytbDarkThemeIconColor, fontSize: 13),
                    ),
                    Text(
                      'Testar os novos recursos',
                      style:
                          TextStyle(color: ytbDarkThemeIconColor, fontSize: 13),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Text(
                  '© 2021 Google LLC',
                  style: TextStyle(
                      color: ytbDarkThemeIconColor,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
