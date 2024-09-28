
class HomeModel {
  bool chat_tab = false;
  bool hover = false;
  int notification_count = 4;

  List<AssistantCardModel> assistants = [
    AssistantCardModel(
      name: 'Assistant-name-1',
      description: 'Assistant-name-1 descriptio is here',
      icon_name: 'icon2.png',
      isSelect: true,
      isPro: true,
    ),
    AssistantCardModel(
      name: 'Assistant-name-2',
      description: 'Assistant-name-2 descriptio is here',
      icon_name: 'icon1.png',
      isSelect: false,
      isPro: false,
    ),
  ];
  List<String> topicsList = [
    'How does writing influence your personal brand? (hove)',
    'Caring is the new marketing',
    'Helping a local business reinvent itself',
    'Travelling as a way of self-discovery and progress',
    'Travelling as a way of self-discovery and progress',
    'Travelling as a way of self-discovery and progress',
    'Travelling as a way of self-discovery and progress',

  ];

}

class AssistantCardModel {
  final String icon_name;
  final String name;
  final bool isSelect;
  final String description;
  final bool isPro;

  AssistantCardModel({
    required this.icon_name,
    required this.name,
    required this.isSelect,
    required this.description,
    required this.isPro,
  });
}
