package controller.task;

import org.springframework.stereotype.Service;
import org.springframework.web.context.request.async.DeferredResult;

@Service
public class PushService {
    private DeferredResult<String> deferredResult;

    public DeferredResult<String> getAsycUpdate() {
        if (deferredResult == null) {
            deferredResult = new DeferredResult<>();
        }
        deferredResult.setResult(new Long(System.currentTimeMillis()).toString());
        return deferredResult;
    }


}
