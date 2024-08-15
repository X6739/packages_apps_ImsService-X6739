.class public Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;
.super Ljava/lang/Object;
.source "TranThubTrancareManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic lambda$appRequestInternal$2(I)Ljava/lang/Object;
    .locals 1
    .param p0, "appid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->appRequest(I)V

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$feedBackInternal$35(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->feedBack(Ljava/lang/String;Z)V

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getAsBooleanArrayInternal$26(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsBooleanArray(Ljava/lang/String;Ljava/lang/String;Z)[Z

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsBooleanDefInternal$22(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .param p3, "def"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsBooleanDef(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsBooleanInternal$21(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsLongArrayInternal$27(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsLongArray(Ljava/lang/String;Ljava/lang/String;Z)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsLongDefInternal$24(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .param p3, "def"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsLongDef(Ljava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsLongInternal$23(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsLong(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsStringArrayInternal$25(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsStringArray(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsStringDefInternal$20(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .param p3, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsStringDef(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsStringInternal$19(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getConfigInternal$17(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getConfigStaticInternal$18(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getConfigStatic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDefaultConfigInternal$16(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDefaultFileContentInternal$15(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getDefaultFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDefaultFilePathInternal$13(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getDefaultFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getEnabledAsNameInternal$11(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getEnabledAsName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getEnabledInternal$10(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getEnabled(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getFileContentInternal$14(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getFilePathInternal$12(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isEnabledInternal$3(J)Ljava/lang/Object;
    .locals 1
    .param p0, "tid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$putAsBooleanArrayInternal$33(Ljava/lang/String;Ljava/lang/String;[Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsBooleanArray(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$putAsBooleanInternal$30(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$putAsLongArrayInternal$34(Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsLongArray(Ljava/lang/String;Ljava/lang/String;[J)V

    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$putAsLongInternal$31(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsLong(Ljava/lang/String;Ljava/lang/String;J)V

    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$putAsStringArrayInternal$32(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$putAsStringInternal$29(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$putConfigInternal$28(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$regCloudEngineCallbackInternal$36(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->regCloudEngineCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$regTranLogCallbackInternal$0(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->regTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$serverLogInternal$4(ILjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "tid"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "msg"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$serverLogInternal$5(JLjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "tid"    # J
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "msg"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$serverLogInternal$6(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "tid"    # J
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "msgs"    # Ljava/util/ArrayList;
    .param p5, "msg"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static/range {p0 .. p5}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$serverLogInternal$7(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "tid"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "msgs"    # Ljava/util/ArrayList;
    .param p4, "msg"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$serverLogInternal$8(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "tid"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$serverLogInternal$9(JLjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "tid"    # J
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$unregCloudEngineCallbackInternal$37(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->unregCloudEngineCallback(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$unregTranLogCallbackInternal$1(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->unRegTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public appRequestInternal(I)V
    .locals 3
    .param p1, "appid"    # I

    .line 48
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda35;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda35;-><init>(I)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public feedBackInternal(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 293
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public getAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z

    .line 223
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public getAsBooleanDefInternal(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z
    .param p4, "def"    # Z

    .line 195
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z

    .line 188
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z

    .line 230
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public getAsLongDefInternal(Ljava/lang/String;Ljava/lang/String;ZJ)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z
    .param p4, "def"    # J

    .line 209
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda28;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string v1, "trancare"

    invoke-virtual {v0, v7, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsLongInternal(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z

    .line 202
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda37;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z

    .line 216
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAsStringDefInternal(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z
    .param p4, "def"    # Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda31;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAsStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "local"    # Z

    .line 174
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConfigInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConfigStaticInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultConfigInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda34;-><init>(Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda33;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFilePathInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledAsNameInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # Z

    .line 118
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnabledInternal(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 111
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFilePathInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isEnabledInternal(J)Z
    .locals 3
    .param p1, "tid"    # J

    .line 56
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda29;-><init>(J)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public putAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [Z

    .line 277
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public putAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 253
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda26;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public putAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [J

    .line 285
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;Ljava/lang/String;[J)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    return-void
.end method

.method public putAsLongInternal(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 261
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public putAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [Ljava/lang/String;

    .line 269
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method public putAsStringInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public putConfigInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 237
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public regCloudEngineCallbackInternal(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 301
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public regTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 32
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public serverLogInternal(ILjava/lang/String;)V
    .locals 3
    .param p1, "tid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda24;-><init>(ILjava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public serverLogInternal(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "tid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "msg"    # Landroid/os/Bundle;

    .line 63
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda16;-><init>(ILjava/lang/String;ILandroid/os/Bundle;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public serverLogInternal(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "tid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p5, "msg"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 87
    .local p4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda36;

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda36;-><init>(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v7, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public serverLogInternal(JLjava/lang/String;)V
    .locals 3
    .param p1, "tid"    # J
    .param p3, "tag"    # Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;-><init>(JLjava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public serverLogInternal(JLjava/lang/String;ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "tid"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "msg"    # Landroid/os/Bundle;

    .line 71
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda15;

    move-object v1, v7

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda15;-><init>(JLjava/lang/String;ILandroid/os/Bundle;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v7, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public serverLogInternal(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "tid"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p6, "msg"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 79
    .local p5, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v8, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda8;

    move-object v1, v8

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda8;-><init>(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v8, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public unregCloudEngineCallbackInternal(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 309
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public unregTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 40
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    return-void
.end method
