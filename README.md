# ScoreNow

Protótipo de um aplicativo de acompanhamento esportivo inspirado no Apple Sports, desenvolvido em SwiftUI durante o Challenge 3 da Apple Developer Academy.

## Sobre o projeto

O ScoreNow foi criado com o objetivo de reproduzir a experiência visual e o fluxo principal de um aplicativo nativo da Apple. O projeto concentra-se na construção da interface, na navegação entre telas e na adaptação do conteúdo para diferentes necessidades de acessibilidade.

Por se tratar de um protótipo acadêmico, dados, placares e eventos são demonstrativos. Algumas ações e telas secundárias não possuem implementação completa.

## Principais experiências

- Navegação por diferentes categorias esportivas;
- Fluxo de futebol com Copa do Mundo, partidas e detalhes do jogo;
- Resumo da partida com estatísticas e posse de bola;
- Visualização das escalações de Brasil e Japão;
- Conteúdo de Fórmula 1 com próximos eventos, pódio e classificação;
- Aba de favoritos com eventos ao vivo, recentes e futuros;
- Seleção de categorias e campeonatos favoritos;
- Splash screen animada;
- Feedback háptico em elementos interativos.

## Fluxos disponíveis

### Futebol

`Esportes → Futebol → Copa do Mundo 2026 → Partida → Resumo ou Escalação`

### Fórmula 1

`Esportes → Corrida → Fórmula 1`

Também é possível acessar partidas e corridas pela aba **Favoritos**.

## Acessibilidade

O projeto possui tratamentos específicos para melhorar a experiência com recursos de acessibilidade do iOS:

- Layouts alternativos para tamanhos de fonte de acessibilidade;
- Suporte a Dynamic Type;
- Labels, valores e dicas para VoiceOver;
- Agrupamento semântico de cards e estatísticas;
- Elementos decorativos ocultados da árvore de acessibilidade;
- Fontes escaláveis e textos com suporte a múltiplas linhas.

## Tecnologias utilizadas

- Swift;
- SwiftUI;
- NavigationStack;
- Dynamic Type;
- VoiceOver;
- TimelineView;
- Sensory Feedback;
- Liquid Glass.

## Estrutura do projeto

```text
Challenge3
├── Model
│   └── Modelos utilizados nas classificações
├── View
│   ├── Componentes
│   │   ├── Avatares
│   │   ├── Bandeiras
│   │   ├── Botões
│   │   ├── Cards
│   │   ├── Categorias
│   │   └── Estatísticas
│   ├── Assets.xcassets
│   └── Telas do aplicativo
├── Fonts
└── Info.plist
```

## Como executar

1. Clone este repositório:

   ```bash
   git clone https://github.com/pedrocanute/ScoreNow.git
   ```

2. Abra `ScoreNow.xcodeproj` no Xcode.
3. Selecione um simulador ou dispositivo compatível.
4. Execute o projeto com `Command + R`.

> [!NOTE]
> O projeto foi desenvolvido utilizando o Xcode 27 beta 3 e o SDK do iOS 27. Posteriormente, o deployment target foi ajustado para o iOS 26.6.

## Escopo e limitações

O foco do Challenge foi a reprodução de interface e a navegação do fluxo principal. Por isso:

- Os dados esportivos são estáticos;
- Não há integração com API ou serviço de resultados;
- Notícias e Perfil são telas demonstrativas;
- Favoritos não são persistidos após encerrar o aplicativo;
- Algumas opções conduzem a uma tela de conteúdo indisponível.

## Autor

Desenvolvido por [Pedro Canute](https://github.com/pedrocanute).

## Aviso

Este é um projeto educacional inspirado no Apple Sports. Não possui vínculo oficial com a Apple e não tem finalidade comercial.
