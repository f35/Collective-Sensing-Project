<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Weekler</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <%!
      
    %>
    <script>
        (function () {
            document.write("<base href='//" + document.location.host + "' />");
        }());
    </script>
    <base href=""/>

    <link href="theme/css/bootstrap.min.css" rel="stylesheet">
    <link href="theme/css/one-page-wonder.css" rel="stylesheet">
    <link href="theme/css/custom.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="js/angular2/bundles/angular2-polyfills.min.js"></script>
    <script src="js/systemjs/dist/system.js"></script>
    <script>
        System.config({
            defaultJSExtensions: true,
            bundles: {
                'js/app/app': ['boot'],
                'js/rxjs/bundles/Rx.min': [
                    "rxjs/InnerSubscriber",
                    "rxjs/Notification",
                    "rxjs/Observable",
                    "rxjs/OuterSubscriber",
                    "rxjs/Rx",
                    "rxjs/Subject",
                    "rxjs/Subscriber",
                    "rxjs/Subscription",
                    "rxjs/add/observable/bindCallback",
                    "rxjs/add/observable/defer",
                    "rxjs/add/observable/empty",
                    "rxjs/add/observable/forkJoin",
                    "rxjs/add/observable/from",
                    "rxjs/add/observable/fromArray",
                    "rxjs/add/observable/fromEvent",
                    "rxjs/add/observable/fromEventPattern",
                    "rxjs/add/observable/fromPromise",
                    "rxjs/add/observable/interval",
                    "rxjs/add/observable/never",
                    "rxjs/add/observable/range",
                    "rxjs/add/observable/throw",
                    "rxjs/add/observable/timer",
                    "rxjs/add/operator/buffer",
                    "rxjs/add/operator/bufferCount",
                    "rxjs/add/operator/bufferTime",
                    "rxjs/add/operator/bufferToggle",
                    "rxjs/add/operator/bufferWhen",
                    "rxjs/add/operator/catch",
                    "rxjs/add/operator/combineAll",
                    "rxjs/add/operator/combineLatest",
                    "rxjs/add/operator/combineLatest-static",
                    "rxjs/add/operator/concat",
                    "rxjs/add/operator/concat-static",
                    "rxjs/add/operator/concatAll",
                    "rxjs/add/operator/concatMap",
                    "rxjs/add/operator/concatMapTo",
                    "rxjs/add/operator/count",
                    "rxjs/add/operator/debounce",
                    "rxjs/add/operator/debounceTime",
                    "rxjs/add/operator/defaultIfEmpty",
                    "rxjs/add/operator/delay",
                    "rxjs/add/operator/dematerialize",
                    "rxjs/add/operator/distinctUntilChanged",
                    "rxjs/add/operator/do",
                    "rxjs/add/operator/every",
                    "rxjs/add/operator/expand",
                    "rxjs/add/operator/filter",
                    "rxjs/add/operator/finally",
                    "rxjs/add/operator/first",
                    "rxjs/add/operator/groupBy",
                    "rxjs/add/operator/ignoreElements",
                    "rxjs/add/operator/last",
                    "rxjs/add/operator/map",
                    "rxjs/add/operator/mapTo",
                    "rxjs/add/operator/materialize",
                    "rxjs/add/operator/merge",
                    "rxjs/add/operator/merge-static",
                    "rxjs/add/operator/mergeAll",
                    "rxjs/add/operator/mergeMap",
                    "rxjs/add/operator/mergeMapTo",
                    "rxjs/add/operator/multicast",
                    "rxjs/add/operator/observeOn",
                    "rxjs/add/operator/partition",
                    "rxjs/add/operator/publish",
                    "rxjs/add/operator/publishBehavior",
                    "rxjs/add/operator/publishLast",
                    "rxjs/add/operator/publishReplay",
                    "rxjs/add/operator/reduce",
                    "rxjs/add/operator/repeat",
                    "rxjs/add/operator/retry",
                    "rxjs/add/operator/retryWhen",
                    "rxjs/add/operator/sample",
                    "rxjs/add/operator/sampleTime",
                    "rxjs/add/operator/scan",
                    "rxjs/add/operator/share",
                    "rxjs/add/operator/single",
                    "rxjs/add/operator/skip",
                    "rxjs/add/operator/skipUntil",
                    "rxjs/add/operator/skipWhile",
                    "rxjs/add/operator/startWith",
                    "rxjs/add/operator/subscribeOn",
                    "rxjs/add/operator/switch",
                    "rxjs/add/operator/switchMap",
                    "rxjs/add/operator/switchMapTo",
                    "rxjs/add/operator/take",
                    "rxjs/add/operator/takeUntil",
                    "rxjs/add/operator/takeWhile",
                    "rxjs/add/operator/throttle",
                    "rxjs/add/operator/throttleTime",
                    "rxjs/add/operator/timeout",
                    "rxjs/add/operator/timeoutWith",
                    "rxjs/add/operator/toArray",
                    "rxjs/add/operator/toPromise",
                    "rxjs/add/operator/window",
                    "rxjs/add/operator/windowCount",
                    "rxjs/add/operator/windowTime",
                    "rxjs/add/operator/windowToggle",
                    "rxjs/add/operator/windowWhen",
                    "rxjs/add/operator/withLatestFrom",
                    "rxjs/add/operator/zip",
                    "rxjs/add/operator/zip-static",
                    "rxjs/add/operator/zipAll",
                    "rxjs/observable/ConnectableObservable",
                    "rxjs/observable/IteratorObservable",
                    "rxjs/observable/ScalarObservable",
                    "rxjs/observable/SubscribeOnObservable",
                    "rxjs/observable/bindCallback",
                    "rxjs/observable/defer",
                    "rxjs/observable/empty",
                    "rxjs/observable/forkJoin",
                    "rxjs/observable/from",
                    "rxjs/observable/fromArray",
                    "rxjs/observable/fromEvent",
                    "rxjs/observable/fromEventPattern",
                    "rxjs/observable/fromPromise",
                    "rxjs/observable/interval",
                    "rxjs/observable/never",
                    "rxjs/observable/range",
                    "rxjs/observable/throw",
                    "rxjs/observable/timer",
                    "rxjs/operator/buffer",
                    "rxjs/operator/bufferCount",
                    "rxjs/operator/bufferTime",
                    "rxjs/operator/bufferToggle",
                    "rxjs/operator/bufferWhen",
                    "rxjs/operator/catch",
                    "rxjs/operator/combineAll",
                    "rxjs/operator/combineLatest",
                    "rxjs/operator/combineLatest-static",
                    "rxjs/operator/combineLatest-support",
                    "rxjs/operator/concat",
                    "rxjs/operator/concat-static",
                    "rxjs/operator/concatAll",
                    "rxjs/operator/concatMap",
                    "rxjs/operator/concatMapTo",
                    "rxjs/operator/count",
                    "rxjs/operator/debounce",
                    "rxjs/operator/debounceTime",
                    "rxjs/operator/defaultIfEmpty",
                    "rxjs/operator/delay",
                    "rxjs/operator/dematerialize",
                    "rxjs/operator/distinctUntilChanged",
                    "rxjs/operator/do",
                    "rxjs/operator/every",
                    "rxjs/operator/expand",
                    "rxjs/operator/expand-support",
                    "rxjs/operator/filter",
                    "rxjs/operator/finally",
                    "rxjs/operator/first",
                    "rxjs/operator/groupBy",
                    "rxjs/operator/groupBy-support",
                    "rxjs/operator/ignoreElements",
                    "rxjs/operator/last",
                    "rxjs/operator/map",
                    "rxjs/operator/mapTo",
                    "rxjs/operator/materialize",
                    "rxjs/operator/merge",
                    "rxjs/operator/merge-static",
                    "rxjs/operator/mergeAll",
                    "rxjs/operator/mergeAll-support",
                    "rxjs/operator/mergeMap",
                    "rxjs/operator/mergeMap-support",
                    "rxjs/operator/mergeMapTo",
                    "rxjs/operator/mergeMapTo-support",
                    "rxjs/operator/multicast",
                    "rxjs/operator/observeOn",
                    "rxjs/operator/observeOn-support",
                    "rxjs/operator/partition",
                    "rxjs/operator/publish",
                    "rxjs/operator/publishBehavior",
                    "rxjs/operator/publishLast",
                    "rxjs/operator/publishReplay",
                    "rxjs/operator/reduce",
                    "rxjs/operator/reduce-support",
                    "rxjs/operator/repeat",
                    "rxjs/operator/retry",
                    "rxjs/operator/retryWhen",
                    "rxjs/operator/sample",
                    "rxjs/operator/sampleTime",
                    "rxjs/operator/scan",
                    "rxjs/operator/share",
                    "rxjs/operator/single",
                    "rxjs/operator/skip",
                    "rxjs/operator/skipUntil",
                    "rxjs/operator/skipWhile",
                    "rxjs/operator/startWith",
                    "rxjs/operator/subscribeOn",
                    "rxjs/operator/switch",
                    "rxjs/operator/switchMap",
                    "rxjs/operator/switchMapTo",
                    "rxjs/operator/take",
                    "rxjs/operator/takeUntil",
                    "rxjs/operator/takeWhile",
                    "rxjs/operator/throttle",
                    "rxjs/operator/throttleTime",
                    "rxjs/operator/timeout",
                    "rxjs/operator/timeoutWith",
                    "rxjs/operator/toArray",
                    "rxjs/operator/toPromise",
                    "rxjs/operator/window",
                    "rxjs/operator/windowCount",
                    "rxjs/operator/windowTime",
                    "rxjs/operator/windowToggle",
                    "rxjs/operator/windowWhen",
                    "rxjs/operator/withLatestFrom",
                    "rxjs/operator/zip",
                    "rxjs/operator/zip-static",
                    "rxjs/operator/zip-support",
                    "rxjs/operator/zipAll",
                    "rxjs/scheduler/AsapAction",
                    "rxjs/scheduler/AsapScheduler",
                    "rxjs/scheduler/FutureAction",
                    "rxjs/scheduler/QueueAction",
                    "rxjs/scheduler/QueueScheduler",
                    "rxjs/scheduler/asap",
                    "rxjs/scheduler/queue",
                    "rxjs/subject/AsyncSubject",
                    "rxjs/subject/BehaviorSubject",
                    "rxjs/subject/ReplaySubject",
                    "rxjs/subject/SubjectSubscription",
                    "rxjs/symbol/rxSubscriber",
                    "rxjs/util/ArgumentOutOfRangeError",
                    "rxjs/util/EmptyError",
                    "rxjs/util/FastMap",
                    "rxjs/util/Immediate",
                    "rxjs/util/Map",
                    "rxjs/util/MapPolyfill",
                    "rxjs/util/ObjectUnsubscribedError",
                    "rxjs/util/SymbolShim",
                    "rxjs/util/errorObject",
                    "rxjs/util/isArray",
                    "rxjs/util/isDate",
                    "rxjs/util/isNumeric",
                    "rxjs/util/isPromise",
                    "rxjs/util/isScheduler",
                    "rxjs/util/noop",
                    "rxjs/util/not",
                    "rxjs/util/root",
                    "rxjs/util/subscribeToResult",
                    "rxjs/util/throwError",
                    "rxjs/util/tryCatch",
                    "rxjs/util/tryOrOnError"
                ],
                // angular.min fails with EXCEPTION: No provider for t! (t -> t) on person form
                'js/angular2/bundles/angular2': [
                    "angular2/common",
                    "angular2/compiler",
                    "angular2/core",
                    "angular2/instrumentation",
                    "angular2/platform/browser",
                    "angular2/platform/common_dom",
                    "angular2/src/animate/animation",
                    "angular2/src/animate/animation_builder",
                    "angular2/src/animate/browser_details",
                    "angular2/src/animate/css_animation_builder",
                    "angular2/src/animate/css_animation_options",
                    "angular2/src/common/common_directives",
                    "angular2/src/common/directives",
                    "angular2/src/common/directives/core_directives",
                    "angular2/src/common/directives/ng_class",
                    "angular2/src/common/directives/ng_for",
                    "angular2/src/common/directives/ng_if",
                    "angular2/src/common/directives/ng_style",
                    "angular2/src/common/directives/ng_switch",
                    "angular2/src/common/directives/observable_list_diff",
                    "angular2/src/common/forms",
                    "angular2/src/common/forms/directives",
                    "angular2/src/common/forms/directives/abstract_control_directive",
                    "angular2/src/common/forms/directives/checkbox_value_accessor",
                    "angular2/src/common/forms/directives/control_container",
                    "angular2/src/common/forms/directives/control_value_accessor",
                    "angular2/src/common/forms/directives/default_value_accessor",
                    "angular2/src/common/forms/directives/ng_control",
                    "angular2/src/common/forms/directives/ng_control_group",
                    "angular2/src/common/forms/directives/ng_control_name",
                    "angular2/src/common/forms/directives/ng_control_status",
                    "angular2/src/common/forms/directives/ng_form",
                    "angular2/src/common/forms/directives/ng_form_control",
                    "angular2/src/common/forms/directives/ng_form_model",
                    "angular2/src/common/forms/directives/ng_model",
                    "angular2/src/common/forms/directives/normalize_validator",
                    "angular2/src/common/forms/directives/number_value_accessor",
                    "angular2/src/common/forms/directives/select_control_value_accessor",
                    "angular2/src/common/forms/directives/shared",
                    "angular2/src/common/forms/directives/validators",
                    "angular2/src/common/forms/form_builder",
                    "angular2/src/common/forms/model",
                    "angular2/src/common/forms/validators",
                    "angular2/src/common/pipes",
                    "angular2/src/common/pipes/async_pipe",
                    "angular2/src/common/pipes/date_pipe",
                    "angular2/src/common/pipes/invalid_pipe_argument_exception",
                    "angular2/src/common/pipes/json_pipe",
                    "angular2/src/common/pipes/lowercase_pipe",
                    "angular2/src/common/pipes/number_pipe",
                    "angular2/src/common/pipes/slice_pipe",
                    "angular2/src/common/pipes/uppercase_pipe",
                    "angular2/src/compiler/change_definition_factory",
                    "angular2/src/compiler/change_detector_compiler",
                    "angular2/src/compiler/compiler",
                    "angular2/src/compiler/directive_metadata",
                    "angular2/src/compiler/html_ast",
                    "angular2/src/compiler/html_lexer",
                    "angular2/src/compiler/html_parser",
                    "angular2/src/compiler/html_tags",
                    "angular2/src/compiler/parse_util",
                    "angular2/src/compiler/proto_view_compiler",
                    "angular2/src/compiler/runtime_compiler",
                    "angular2/src/compiler/runtime_metadata",
                    "angular2/src/compiler/schema/dom_element_schema_registry",
                    "angular2/src/compiler/schema/element_schema_registry",
                    "angular2/src/compiler/selector",
                    "angular2/src/compiler/shadow_css",
                    "angular2/src/compiler/source_module",
                    "angular2/src/compiler/style_compiler",
                    "angular2/src/compiler/style_url_resolver",
                    "angular2/src/compiler/template_ast",
                    "angular2/src/compiler/template_compiler",
                    "angular2/src/compiler/template_normalizer",
                    "angular2/src/compiler/template_parser",
                    "angular2/src/compiler/template_preparser",
                    "angular2/src/compiler/url_resolver",
                    "angular2/src/compiler/util",
                    "angular2/src/compiler/view_compiler",
                    "angular2/src/compiler/xhr",
                    "angular2/src/core/angular_entrypoint",
                    "angular2/src/core/application_common_providers",
                    "angular2/src/core/application_ref",
                    "angular2/src/core/application_tokens",
                    "angular2/src/core/change_detection",
                    "angular2/src/core/change_detection/abstract_change_detector",
                    "angular2/src/core/change_detection/binding_record",
                    "angular2/src/core/change_detection/change_detection",
                    "angular2/src/core/change_detection/change_detection_jit_generator",
                    "angular2/src/core/change_detection/change_detection_util",
                    "angular2/src/core/change_detection/change_detector_ref",
                    "angular2/src/core/change_detection/coalesce",
                    "angular2/src/core/change_detection/codegen_facade",
                    "angular2/src/core/change_detection/codegen_logic_util",
                    "angular2/src/core/change_detection/codegen_name_util",
                    "angular2/src/core/change_detection/constants",
                    "angular2/src/core/change_detection/differs/default_iterable_differ",
                    "angular2/src/core/change_detection/differs/default_keyvalue_differ",
                    "angular2/src/core/change_detection/differs/iterable_differs",
                    "angular2/src/core/change_detection/differs/keyvalue_differs",
                    "angular2/src/core/change_detection/directive_record",
                    "angular2/src/core/change_detection/dynamic_change_detector",
                    "angular2/src/core/change_detection/event_binding",
                    "angular2/src/core/change_detection/exceptions",
                    "angular2/src/core/change_detection/interfaces",
                    "angular2/src/core/change_detection/jit_proto_change_detector",
                    "angular2/src/core/change_detection/observable_facade",
                    "angular2/src/core/change_detection/parser/ast",
                    "angular2/src/core/change_detection/parser/lexer",
                    "angular2/src/core/change_detection/parser/locals",
                    "angular2/src/core/change_detection/parser/parser",
                    "angular2/src/core/change_detection/pipe_lifecycle_reflector",
                    "angular2/src/core/change_detection/pipes",
                    "angular2/src/core/change_detection/proto_change_detector",
                    "angular2/src/core/change_detection/proto_record",
                    "angular2/src/core/console",
                    "angular2/src/core/debug/debug_element",
                    "angular2/src/core/di",
                    "angular2/src/core/di/decorators",
                    "angular2/src/core/di/exceptions",
                    "angular2/src/core/di/forward_ref",
                    "angular2/src/core/di/injector",
                    "angular2/src/core/di/key",
                    "angular2/src/core/di/metadata",
                    "angular2/src/core/di/opaque_token",
                    "angular2/src/core/di/provider",
                    "angular2/src/core/di/type_literal",
                    "angular2/src/core/linker",
                    "angular2/src/core/linker/compiler",
                    "angular2/src/core/linker/directive_lifecycle_reflector",
                    "angular2/src/core/linker/directive_resolver",
                    "angular2/src/core/linker/dynamic_component_loader",
                    "angular2/src/core/linker/element",
                    "angular2/src/core/linker/element_ref",
                    "angular2/src/core/linker/interfaces",
                    "angular2/src/core/linker/pipe_resolver",
                    "angular2/src/core/linker/query_list",
                    "angular2/src/core/linker/resolved_metadata_cache",
                    "angular2/src/core/linker/template_ref",
                    "angular2/src/core/linker/view",
                    "angular2/src/core/linker/view_container_ref",
                    "angular2/src/core/linker/view_listener",
                    "angular2/src/core/linker/view_manager",
                    "angular2/src/core/linker/view_ref",
                    "angular2/src/core/linker/view_resolver",
                    "angular2/src/core/linker/view_type",
                    "angular2/src/core/metadata",
                    "angular2/src/core/metadata/di",
                    "angular2/src/core/metadata/directives",
                    "angular2/src/core/metadata/view",
                    "angular2/src/core/pipes/pipe_provider",
                    "angular2/src/core/pipes/pipes",
                    "angular2/src/core/platform_common_providers",
                    "angular2/src/core/platform_directives_and_pipes",
                    "angular2/src/core/prod_mode",
                    "angular2/src/core/profile/profile",
                    "angular2/src/core/profile/wtf_impl",
                    "angular2/src/core/profile/wtf_init",
                    "angular2/src/core/reflection/reflection",
                    "angular2/src/core/reflection/reflection_capabilities",
                    "angular2/src/core/reflection/reflector",
                    "angular2/src/core/render",
                    "angular2/src/core/render/api",
                    "angular2/src/core/render/util",
                    "angular2/src/core/testability/testability",
                    "angular2/src/core/util",
                    "angular2/src/core/util/decorators",
                    "angular2/src/core/zone",
                    "angular2/src/core/zone/ng_zone",
                    "angular2/src/facade/async",
                    "angular2/src/facade/browser",
                    "angular2/src/facade/collection",
                    "angular2/src/facade/exception_handler",
                    "angular2/src/facade/exceptions",
                    "angular2/src/facade/facade",
                    "angular2/src/facade/intl",
                    "angular2/src/facade/lang",
                    "angular2/src/facade/math",
                    "angular2/src/facade/promise",
                    "angular2/src/platform/browser/browser_adapter",
                    "angular2/src/platform/browser/generic_browser_adapter",
                    "angular2/src/platform/browser/testability",
                    "angular2/src/platform/browser/title",
                    "angular2/src/platform/browser/tools/common_tools",
                    "angular2/src/platform/browser/tools/tools",
                    "angular2/src/platform/browser/xhr_impl",
                    "angular2/src/platform/browser_common",
                    "angular2/src/platform/dom/debug/by",
                    "angular2/src/platform/dom/debug/debug_element_view_listener",
                    "angular2/src/platform/dom/dom_adapter",
                    "angular2/src/platform/dom/dom_renderer",
                    "angular2/src/platform/dom/dom_tokens",
                    "angular2/src/platform/dom/events/dom_events",
                    "angular2/src/platform/dom/events/event_manager",
                    "angular2/src/platform/dom/events/hammer_common",
                    "angular2/src/platform/dom/events/hammer_gestures",
                    "angular2/src/platform/dom/events/key_events",
                    "angular2/src/platform/dom/shared_styles_host",
                    "angular2/src/platform/dom/util",
                    "angular2/src/transform/template_compiler/change_detector_codegen"
                ],
                'js/angular2/bundles/router.min': [
                    'angular2/router'
                ],
                'js/angular2/bundles/http.min': [
                    'angular2/http'
                ],
                'js/angular2/bundles/updgrade.min': [
                    'angular2/upgrade'
                ]
            }
        });
        System.import('boot').catch(console.error.bind(console));
    </script>

</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Weekler</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="people">People</a>
                </li>
                <li>
                    <a href="schedule">Schedule</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="space"></div>
    <weekler>Loading....</weekler>

    <hr>
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Weekler 2016</p>
            </div>
        </div>
    </footer>
</div>

<script src="theme/js/jquery.js"></script>
<script src="theme/js/bootstrap.min.js"></script>
</body>

</html>
