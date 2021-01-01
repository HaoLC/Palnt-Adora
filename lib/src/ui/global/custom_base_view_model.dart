import 'package:plantagoda/src/ui/mixin/service_mix.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_localisation/stacked_localisation.dart';

abstract class CustomBaseViewModel extends BaseViewModel
    with LocalisedClass, ServiceMix {
  // Add any shared stuff between all viewmodels here,
  // they will be accessible in every viewmodel you extend using this class.
}

abstract class IndexTrackingViewModelExtends extends IndexTrackingViewModel
    with LocalisedClass, ServiceMix {
  // Add any shared stuff between all viewmodels here,
  // they will be accessible in every viewmodel you extend using this class.
}

abstract class FutureViewModelExtends extends FutureViewModel
    with LocalisedClass, ServiceMix {
  // Add any shared stuff between all viewmodels here,
  // they will be accessible in every viewmodel you extend using this class.
}

abstract class MultipleFutureViewModelExtends extends MultipleFutureViewModel
    with LocalisedClass, ServiceMix {
  // Add any shared stuff between all viewmodels here,
  // they will be accessible in every viewmodel you extend using this class.
}
