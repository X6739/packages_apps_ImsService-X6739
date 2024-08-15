.class public Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;
.super Ljava/lang/Object;
.source "TranAospTelephonyManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;


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

.field private static sServiceStateClass:Ljava/lang/Class;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sClassName:Ljava/lang/Class;

    .line 26
    const-string v0, "android.telephony.ServiceState"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sServiceStateClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getDataEnabled()Z
    .locals 5

    .line 78
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 79
    sget-object v1, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mContext:Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    .line 81
    :cond_0
    sget-object v1, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sClassName:Ljava/lang/Class;

    const-string v3, "getDataEnabled"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "enable":Z
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 86
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 87
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 89
    :cond_1
    return v2

    .line 90
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "enable":Z
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 91
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataEnabled fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method public getRadioPowerState()I
    .locals 5

    .line 99
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 100
    sget-object v1, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mContext:Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    .line 102
    :cond_0
    sget-object v1, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sClassName:Ljava/lang/Class;

    const-string v3, "getRadioPowerState"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 104
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "state":I
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 107
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 108
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 110
    :cond_1
    return v2

    .line 111
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "state":I
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 112
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioPowerState fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method public getServiceState()Lcom/transsion/hubsdk/api/telephony/TranServiceState;
    .locals 13

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sClassName:Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mContext:Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    .line 39
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sClassName:Ljava/lang/Class;

    const-string v3, "getServiceState"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 42
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    .local v3, "obj":Ljava/lang/Object;
    sget-object v4, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sServiceStateClass:Ljava/lang/Class;

    const-string v5, "getState"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 44
    .local v4, "methodState":Ljava/lang/reflect/Method;
    sget-object v5, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sServiceStateClass:Ljava/lang/Class;

    const-string v6, "getOperatorNumeric"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 45
    .local v5, "methodNumeric":Ljava/lang/reflect/Method;
    sget-object v6, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->sServiceStateClass:Ljava/lang/Class;

    const-string v7, "getDataRoamingType"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 46
    .local v6, "methodType":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_4

    .line 47
    const/4 v7, 0x0

    .line 48
    .local v7, "state":I
    const/4 v8, 0x0

    .line 49
    .local v8, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 50
    .local v9, "type":I
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 51
    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 52
    .local v10, "objState":Ljava/lang/Object;
    if-eqz v10, :cond_1

    instance-of v11, v10, Ljava/lang/Integer;

    if-eqz v11, :cond_1

    .line 53
    move-object v11, v10

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v7, v11

    .line 55
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 56
    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 57
    .local v11, "objNumeric":Ljava/lang/Object;
    if-eqz v11, :cond_2

    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 58
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    move-object v8, v12

    .line 60
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "objType":Ljava/lang/Object;
    if-eqz v1, :cond_3

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 63
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    .line 65
    :cond_3
    new-instance v2, Lcom/transsion/hubsdk/api/telephony/TranServiceState;

    invoke-direct {v2, v7, v8, v9}, Lcom/transsion/hubsdk/api/telephony/TranServiceState;-><init>(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 70
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "objType":Ljava/lang/Object;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "methodState":Ljava/lang/reflect/Method;
    .end local v5    # "methodNumeric":Ljava/lang/reflect/Method;
    .end local v6    # "methodType":Ljava/lang/reflect/Method;
    .end local v7    # "state":I
    .end local v8    # "numeric":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v10    # "objState":Ljava/lang/Object;
    .end local v11    # "objNumeric":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceState fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setClassObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 123
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;->mInstanceObject:Ljava/lang/Object;

    .line 124
    return-void
.end method
