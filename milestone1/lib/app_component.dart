import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'crisis_list_component.dart';
import 'hero_list_component.dart';

@Component(
    selector: 'my-app',
    template: '''
      <h1>Component Router</h1>
      <nav>
        <a [routerLink]="['CrisisCenter']">Crisis Center</a>
        <a [routerLink]="['Heroes']">Heroes</a>
      </nav>
      <router-outlet></router-outlet>
    ''',
    directives: const [ROUTER_DIRECTIVES]
    )
@RouteConfig(const [
  const Route(path: '/crisis-center', name: 'CrisisCenter', component: CrisisListComponent),
  const Route(path: '/heroes', name: 'Heroes', component: HeroListComponent)
])
class AppComponent {}
