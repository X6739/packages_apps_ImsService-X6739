.class public Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;
.super Ljava/lang/Object;
.source "TranAospSystemProperties.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;


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
.field private mMethodNameGet:Ljava/lang/reflect/Method;

.field private mMethodNameGetBoolean:Ljava/lang/reflect/Method;

.field private mMethodNameGetInt:Ljava/lang/reflect/Method;

.field private mMethodNameGetLong:Ljava/lang/reflect/Method;

.field private mMethodNameSet:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    .line 23
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    .line 24
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    .line 25
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    .line 26
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "get"

    invoke-static {v0, v5, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    .line 35
    :cond_0
    move-object v0, p2

    .line 37
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v3

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 40
    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 44
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    nop

    .line 45
    return-object v0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    .local v1, "t":Ljava/lang/Throwable;
    return-object p2
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    const-string v5, "getBoolean"

    invoke-static {v0, v5, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    .line 95
    :cond_0
    move v0, p2

    .line 97
    .local v0, "ret":Z
    :try_start_0
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 100
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 104
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    nop

    .line 105
    return v0

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    .local v1, "t":Ljava/lang/Throwable;
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    const-string v5, "getInt"

    invoke-static {v0, v5, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    .line 55
    :cond_0
    move v0, p2

    .line 57
    .local v0, "ret":I
    :try_start_0
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 58
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 60
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 64
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    nop

    .line 65
    return v0

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    .local v1, "t":Ljava/lang/Throwable;
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    const-string v5, "getLong"

    invoke-static {v0, v5, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    .line 75
    :cond_0
    move-wide v4, p2

    .line 77
    .local v4, "ret":J
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 78
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    sget-object v6, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v4, v1

    .line 84
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    nop

    .line 85
    return-wide v4

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    .local v0, "t":Ljava/lang/Throwable;
    return-wide p2
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "set"

    invoke-static {v0, v5, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    .line 116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 117
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
