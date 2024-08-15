.class public Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;
.super Ljava/lang/Object;
.source "TranVerifyKeyManager.java"


# static fields
.field public static final RESULT_ERROR_APP_NOT_VERIFY:I = -0x8

.field private static final TAG:Ljava/lang/String;

.field private static mBinder:Landroid/os/Binder;

.field private static mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->mBinder:Landroid/os/Binder;

    .line 38
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "verify_key"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    .line 42
    .end local v0    # "serviceIBinder":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method protected static setService(Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;)V
    .locals 0
    .param p0, "mService"    # Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    .line 71
    sput-object p0, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    .line 72
    return-void
.end method

.method public static verify(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    const/4 v1, -0x8

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {p0}, Lcom/transsion/hubsdk/util/TranSignUtils;->getCertSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "signValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 57
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 58
    sget-object v4, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->TAG:Ljava/lang/String;

    const-string v5, "AppKey is null"

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v4, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    sget-object v5, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->mBinder:Landroid/os/Binder;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v0, v2}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;->verify(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 61
    :cond_1
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.transsion.appkey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "appKey":Ljava/lang/String;
    sget-object v5, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    sget-object v6, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->mBinder:Landroid/os/Binder;

    invoke-interface {v5, v6, v4, v0, v2}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;->verify(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 63
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appKey":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Landroid/util/AndroidException;
    sget-object v4, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TranVerifyKeyManager verify Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v3    # "e":Landroid/util/AndroidException;
    return v1

    .line 51
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v2    # "signValue":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1
.end method
