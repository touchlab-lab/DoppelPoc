/*
 * Copyright (C) 2016 Google, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package producerstest.subcomponent;

import com.google.common.util.concurrent.ListenableFuture;
import dagger.Component;
import dagger.Module;
import dagger.Provides;
import dagger.producers.ProducerModule;
import dagger.producers.Produces;
import dagger.producers.ProductionComponent;
import dagger.producers.ProductionSubcomponent;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Qualifier;

final class Subcomponents {
  @Qualifier
  @interface FromParent {}

  @Qualifier
  @interface FromChild {}

  @Qualifier
  @interface FromGrandchild {}

  @Module
  static final class ParentModule {
    @Provides
    @FromParent
    static String fromParent() {
      return "parent";
    }
  }

  @Component(modules = ParentModule.class)
  interface ParentComponent {
    InjectsChildBuilder injectsChildBuilder();

    ChildComponentWithExecutor.Builder newChildComponentBuilder();
  }

  @ProducerModule
  static final class ParentProducerModule {
    @Produces
    @FromParent
    static String fromParent() {
      return "parentproduction";
    }
  }

  @ProductionComponent(modules = ParentProducerModule.class)
  interface ParentProductionComponent {
    ChildComponent.Builder newChildComponentBuilder();
  }

  @ProducerModule
  static final class ChildProducerModule {
    @Produces
    @FromChild
    static String fromChild(@FromParent String fromParent) {
      return "child:" + fromParent;
    }
  }

  @ProductionSubcomponent(modules = ChildProducerModule.class)
  interface ChildComponent {
    @FromChild
    ListenableFuture<String> fromChild();

    GrandchildComponent.Builder newGrandchildComponentBuilder();

    @ProductionSubcomponent.Builder
    interface Builder {
      ChildComponent build();
    }
  }

  @ProductionSubcomponent(modules = ChildProducerModule.class)
  interface ChildComponentWithExecutor {
    @FromChild
    ListenableFuture<String> fromChild();

    GrandchildComponent.Builder newGrandchildComponentBuilder();

    @ProductionSubcomponent.Builder
    interface Builder {
      Builder executor(Executor executor);

      ChildComponentWithExecutor build();
    }
  }

  static final class InjectsChildBuilder {
    private final Provider<ChildComponentWithExecutor.Builder> childBuilder;

    @Inject
    InjectsChildBuilder(Provider<ChildComponentWithExecutor.Builder> childBuilder) {
      this.childBuilder = childBuilder;
    }

    ChildComponentWithExecutor.Builder childBuilder() {
      return childBuilder.get();
    }
  }

  @ProducerModule
  static final class GrandchildProducerModule {
    @Produces
    @FromGrandchild
    static String fromGranchild(@FromChild String fromChild) {
      return "grandchild:" + fromChild;
    }
  }

  @ProductionSubcomponent(modules = GrandchildProducerModule.class)
  interface GrandchildComponent {
    @FromGrandchild
    ListenableFuture<String> fromGrandchild();

    @ProductionSubcomponent.Builder
    interface Builder {
      GrandchildComponent build();
    }
  }

  private Subcomponents() {}
}
