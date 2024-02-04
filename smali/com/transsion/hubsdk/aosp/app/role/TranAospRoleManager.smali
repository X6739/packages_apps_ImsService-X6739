.class public Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;
.super Ljava/lang/Object;
.source "TranAospRoleManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;,
        Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRemoteCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRoleManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMethodGetService:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sClassName:Ljava/lang/Class;

    .line 25
    const-string v0, "android.app.role.IRoleManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRoleManagerClass:Ljava/lang/Class;

    .line 26
    const-string v0, "android.os.RemoteCallback$OnResultListener"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRemoteCallbackClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 32
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$addRoleHolderAsUser$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "res"    # Landroid/os/Bundle;

    .line 50
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 18
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    move-object/from16 v1, p0

    .line 38
    :try_start_0
    iget-object v0, v1, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sClassName:Ljava/lang/Class;

    const-string v4, "getService"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 42
    :cond_0
    iget-object v0, v1, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mMethodGetService:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sClassName:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "role"

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "binder":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "queryLocalInterface"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 45
    .local v4, "asInterface":Ljava/lang/reflect/Method;
    sget-object v5, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRoleHolderAsUser asInterface: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "android.app.role.IRoleManager"

    aput-object v7, v6, v2

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 47
    .local v6, "iRoleManager":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRoleHolderAsUser iRoleManager: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v7, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v7}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 50
    .local v7, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    new-instance v8, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 51
    .local v8, "listener":Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;
    sget-object v9, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRemoteCallbackClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Class;

    sget-object v11, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRemoteCallbackClass:Ljava/lang/Class;

    aput-object v11, v10, v2

    new-instance v11, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;

    invoke-direct {v11, v8}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;-><init>(Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;)V

    invoke-static {v9, v10, v11}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    .line 53
    .local v9, "callback":Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRoleHolderAsUser callback: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "addRoleHolderAsUser"

    const/4 v12, 0x5

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v2

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v3

    const-class v14, Ljava/lang/Integer;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-class v14, Ljava/lang/Integer;

    const/16 v16, 0x3

    aput-object v14, v13, v16

    const-class v14, Ljava/lang/Object;

    const/16 v17, 0x4

    aput-object v14, v13, v17

    invoke-static {v10, v11, v13}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 57
    .local v10, "mRoleHolderAsUser":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    aput-object p1, v12, v2

    aput-object p2, v12, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v15

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v16

    aput-object v9, v12, v17

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "addRoleHolderAsUser success!"

    invoke-static {v5, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    nop

    .end local v0    # "binder":Ljava/lang/Object;
    .end local v4    # "asInterface":Ljava/lang/reflect/Method;
    .end local v6    # "iRoleManager":Ljava/lang/Object;
    .end local v7    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local v8    # "listener":Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;
    .end local v9    # "callback":Ljava/lang/Object;
    .end local v10    # "mRoleHolderAsUser":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRoleHolderAsUser fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
