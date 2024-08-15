.class Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;
.super Lcom/transsion/appm/ITranAppmCallback$Stub;
.source "TranAospAppmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;

    .line 74
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;->this$0:Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;

    invoke-direct {p0}, Lcom/transsion/appm/ITranAppmCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;

    .line 78
    .local v1, "callbackInfo":Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->getTranAppmCallback()Lcom/transsion/appm/ITranAppmCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;->onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranAospAppmCallbackWrapper"

    invoke-static {v3, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 86
    .end local v1    # "callbackInfo":Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    return-void
.end method
