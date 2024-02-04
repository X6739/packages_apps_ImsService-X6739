.class public Lcom/transsion/hubsdk/api/app/role/TranRoleManager;
.super Ljava/lang/Object;
.source "TranRoleManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager;->mService:Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubRoleManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager;->mService:Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospRoleManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 51
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager;->mService:Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;II)V

    .line 52
    return-void
.end method
