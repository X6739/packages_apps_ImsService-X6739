.class public Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;
.super Ljava/lang/Object;
.source "TranAospAppmServiceManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospAppmCallbackWrapper"

.field private static final TRAN_APPM_SERVICE:Ljava/lang/String; = "tran_appm"

.field private static final WRAPPER_CALLBACKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 30
    const-string v0, "TranAospAppmCallbackWrapper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    .local v1, "serviceManager":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "obj":Ljava/lang/Object;
    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 35
    .local v3, "method":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "tran_appm"

    aput-object v5, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 37
    .local v4, "tranAppmBinder":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 38
    const-string v5, "get TranAppmService failed !!"

    invoke-static {v0, v5}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 41
    :cond_0
    invoke-static {v4}, Lcom/transsion/appm/ITranAppmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/appm/ITranAppmManager;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    .line 43
    if-nez v5, :cond_1

    .line 44
    const-string v5, "can not get TranAppmService !!"

    invoke-static {v0, v5}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "serviceManager":Ljava/lang/Class;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "tranAppmBinder":Landroid/os/IBinder;
    :cond_1
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "get TranAppmService error !!"

    invoke-static {v0, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 122
    const-string v0, "unkown"

    .line 123
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v2, "TranAospAppmCallbackWrapper"

    if-nez v1, :cond_0

    .line 124
    const-string v1, "getPolicyVersion failed(get AppmService failed)!!"

    invoke-static {v2, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v0

    .line 128
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/transsion/appm/ITranAppmManager;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v1, "TranAospAppmCallbackWrapper"

    if-nez v0, :cond_0

    .line 138
    const-string v0, "notifyClient failed(get AppmService failed)!!"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/transsion/appm/ITranAppmManager;->notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 5
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 67
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v1, "TranAospAppmCallbackWrapper"

    if-nez v0, :cond_0

    .line 68
    const-string v0, "registerAppmCallback failed(get AppmService failed)!!"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;-><init>(Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;)V

    .line 73
    .local v0, "info":Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->setTranAppmCallbackWrapper(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    .line 74
    new-instance v2, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;

    invoke-direct {v2, p0}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;-><init>(Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;)V

    .line 89
    .local v2, "tranAppmCallback":Lcom/transsion/appm/ITranAppmCallback;
    invoke-virtual {v0, v2}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->setTranAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V

    .line 90
    sget-object v3, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    invoke-interface {v3, v2}, Lcom/transsion/appm/ITranAppmManager;->registerAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v1, "TranAospAppmCallbackWrapper"

    if-nez v0, :cond_0

    .line 55
    const-string v0, "sendEvent failed(get AppmService failed)!!"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 59
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/transsion/appm/ITranAppmManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 5
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 101
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v1, "TranAospAppmCallbackWrapper"

    if-nez v0, :cond_0

    .line 102
    const-string v0, "unregisterAppmCallback failed, can not get TranAppmService !!"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;

    .line 106
    .local v2, "callbackInfo":Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
    invoke-virtual {v2}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v2}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->getTranAppmCallback()Lcom/transsion/appm/ITranAppmCallback;

    move-result-object v0

    .line 109
    .local v0, "tranAppmCallback":Lcom/transsion/appm/ITranAppmCallback;
    :try_start_0
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    invoke-interface {v3, v0}, Lcom/transsion/appm/ITranAppmManager;->unregisterAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_1

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    sget-object v1, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    goto :goto_2

    .line 117
    .end local v0    # "tranAppmCallback":Lcom/transsion/appm/ITranAppmCallback;
    .end local v2    # "callbackInfo":Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
    :cond_1
    goto :goto_0

    .line 118
    :cond_2
    :goto_2
    return-void
.end method
