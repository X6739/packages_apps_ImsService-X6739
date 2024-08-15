.class public Lcom/transsion/hubsdk/api/os/TranSystemProperties;
.super Ljava/lang/Object;
.source "TranSystemProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    .line 33
    const-string v1, "33101"

    invoke-static {v1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;-><init>()V

    sput-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    .line 35
    const-string v1, "TranThubSystemProperties"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-direct {v1}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;-><init>()V

    sput-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    .line 38
    const-string v1, "TranAospSystemProperties"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .line 52
    const-string v0, ""

    .line 54
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    invoke-interface {v1, p0, v0}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 73
    move-object v0, p1

    .line 75
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    invoke-interface {v1, p0, v0}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWithDefaultMethod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 142
    move v0, p1

    .line 144
    .local v0, "value":Z
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    invoke-interface {v1, p0, v0}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanMethod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 95
    move v0, p1

    .line 97
    .local v0, "value":I
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    invoke-interface {v1, p0, v0}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntMethod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 115
    move-wide v0, p1

    .line 117
    .local v0, "value":J
    :try_start_0
    sget-object v2, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    invoke-interface {v2, p0, v0, v1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLongMethod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v0
.end method

.method protected static getSystemProperties()Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;
    .locals 1

    .line 183
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    return-object v0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 164
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMethod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected static setSystemProperties(Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;)V
    .locals 0
    .param p0, "adapter"    # Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    .line 175
    sput-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->mSystemProperties:Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    .line 176
    return-void
.end method
