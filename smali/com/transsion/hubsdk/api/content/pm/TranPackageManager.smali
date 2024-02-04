.class public Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;
.super Ljava/lang/Object;
.source "TranPackageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubPackageManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospPackageManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public getAllHiddenApps()[Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getAllHiddenApps()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 97
    .local p1, "outHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 82
    iget-object v0, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    return-object v0
.end method

.method public setHomeActivity(Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 57
    iget-object v0, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 58
    return-void
.end method
