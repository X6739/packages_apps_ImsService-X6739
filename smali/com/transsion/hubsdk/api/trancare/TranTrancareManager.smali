.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;
.super Ljava/lang/Object;
.source "TranTrancareManager.java"


# static fields
.field public static final ACTION_ATHENA_STATE_CHANGED:Ljava/lang/String; = "com.transsion.log.ATHENA_STATE_CHANGED"

.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
            "Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->TAG:Ljava/lang/String;

    .line 676
    new-instance v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static appRequest(I)V
    .locals 3
    .param p0, "appid"    # I

    .line 68
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 69
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->appRequestInternal(I)V

    .line 73
    return-void

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static cleanService()V
    .locals 1

    .line 673
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->clean()V

    .line 674
    return-void
.end method

.method public static feedBack(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "state"    # Z

    .line 630
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 631
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 634
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->feedBackInternal(Ljava/lang/String;Z)V

    .line 635
    return-void

    .line 632
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z

    .line 414
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 415
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 416
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsBooleanArray(Ljava/lang/String;Ljava/lang/String;Z)[Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z

    .line 496
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 497
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Z

    move-result-object v1

    return-object v1

    .line 498
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsBooleanDef(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .param p3, "def"    # Z

    .line 431
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 432
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsBooleanDefInternal(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    return v1

    .line 433
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsLong(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z

    .line 447
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 448
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsLongInternal(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v1

    return-wide v1

    .line 449
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsLongArray(Ljava/lang/String;Ljava/lang/String;Z)[J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z

    .line 512
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 513
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[J

    move-result-object v1

    return-object v1

    .line 514
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsLongDef(Ljava/lang/String;Ljava/lang/String;ZJ)J
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .param p3, "def"    # J

    .line 464
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v6

    .line 465
    .local v6, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v6, :cond_0

    .line 468
    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsLongDefInternal(Ljava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide v0

    return-wide v0

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAsString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z

    .line 381
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 382
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 383
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsStringArray(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z

    .line 480
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 481
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 482
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsStringDef(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .param p3, "def"    # Ljava/lang/String;

    .line 398
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 399
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsStringDefInternal(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 400
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 351
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 352
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getConfigInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 353
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getConfigStatic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 366
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getConfigStaticInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 367
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 337
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 338
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getDefaultConfigInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 339
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDefaultFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 324
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getDefaultFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 325
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDefaultFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 293
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 294
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getDefaultFilePathInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getEnabled(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .line 247
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 248
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getEnabledInternal(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getEnabledAsName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 265
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 266
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getEnabledAsNameInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 267
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 309
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 310
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 279
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 280
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getFilePathInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    .locals 1

    .line 668
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    return-object v0
.end method

.method public static isEnabled(J)Z
    .locals 3
    .param p0, "tid"    # J

    .line 82
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 83
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->isEnabledInternal(J)Z

    move-result v1

    return v1

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static putAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 556
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 557
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 561
    return-void

    .line 558
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static putAsBooleanArray(Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 601
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 602
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 606
    return-void

    .line 603
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static putAsLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 571
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 572
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 575
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsLongInternal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 576
    return-void

    .line 573
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static putAsLongArray(Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 616
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 617
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 620
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;[J)V

    .line 621
    return-void

    .line 618
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static putAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 541
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 542
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 545
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsStringInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void

    .line 543
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static putAsStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 586
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 587
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 590
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 591
    return-void

    .line 588
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static putConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 526
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 527
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putConfigInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void

    .line 528
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static regCloudEngineCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 645
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 646
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->regCloudEngineCallbackInternal(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    .line 650
    return-void

    .line 647
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static regTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 40
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 41
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->regTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    .line 45
    return-void

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static serverLog(ILjava/lang/String;)V
    .locals 3
    .param p0, "tid"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 212
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(ILjava/lang/String;)V

    .line 216
    return-void

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p0, "tid"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "msg"    # Landroid/os/Bundle;

    .line 106
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 107
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 111
    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static serverLog(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "tid"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p4, "msg"    # Landroid/os/Bundle;
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

    .line 192
    .local p3, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v6

    .line 193
    .local v6, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v6, :cond_0

    .line 196
    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    .line 197
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serverLog(JLjava/lang/String;)V
    .locals 3
    .param p0, "tid"    # J
    .param p2, "tag"    # Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 231
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(JLjava/lang/String;)V

    .line 235
    return-void

    .line 232
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V
    .locals 7
    .param p0, "tid"    # J
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "msg"    # Landroid/os/Bundle;

    .line 130
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v6

    .line 131
    .local v6, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v6, :cond_0

    .line 134
    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(JLjava/lang/String;ILandroid/os/Bundle;)V

    .line 135
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serverLog(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "tid"    # J
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p5, "msg"    # Landroid/os/Bundle;
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

    .line 161
    .local p4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v7

    .line 162
    .local v7, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v7, :cond_0

    .line 165
    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    .line 166
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unregCloudEngineCallback(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 659
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 660
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 663
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->unregCloudEngineCallbackInternal(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    .line 664
    return-void

    .line 661
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static unregTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 53
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    .line 54
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->unregTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
