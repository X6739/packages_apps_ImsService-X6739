.class public Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;
.super Ljava/lang/Object;
.source "TranAospUserManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;


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


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstanceObject:Ljava/lang/Object;

.field private mMethodGet:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "android.os.UserManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mMethodGet:Ljava/lang/reflect/Method;

    .line 27
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getCredentialOwnerProfile(I)I
    .locals 7
    .param p1, "userId"    # I

    .line 34
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mMethodGet:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    const-string v4, "get"

    invoke-static {v0, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mMethodGet:Ljava/lang/reflect/Method;

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mMethodGet:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sClassName:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mContext:Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getCredentialOwnerProfile"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 45
    .local v3, "profile":I
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 47
    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 49
    :cond_2
    sget-object v4, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCredentialOwnerProfile user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    return v3

    .line 51
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "profile":I
    :catchall_0
    move-exception v0

    .line 52
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCredentialOwnerProfile fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "t":Ljava/lang/Throwable;
    return v1
.end method

.method public getProfileIdsWithDisabled(I)[I
    .locals 8
    .param p1, "userId"    # I

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "profile":[I
    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 62
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getProfileIdsWithDisabled"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 64
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 66
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, [I

    if-eqz v4, :cond_0

    .line 67
    move-object v4, v3

    check-cast v4, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 70
    :cond_0
    return-object v0

    .line 71
    .end local v1    # "userManager":Landroid/os/UserManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 72
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileIdsWithDisabled fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v1    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method protected setClassObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method
