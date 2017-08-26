#include <hidl/HidlTransportSupport.h>
#include "Light.h"

using android::sp;

using android::hardware::configureRpcThreadpool;
using android::hardware::joinRpcThreadpool;

using android::hardware::light::V2_0::ILight;
using android::hardware::light::V2_0::implementation::Light;

using android::OK;

int main() {
    configureRpcThreadpool(1, true /*callerWillJoin*/);

    sp<ILight> light = new Light;
    auto status = light->registerAsService();
    LOG_ALWAYS_FATAL_IF(status != OK, "Failed to register Light HAL");

    joinRpcThreadpool();
    return 0;
}
