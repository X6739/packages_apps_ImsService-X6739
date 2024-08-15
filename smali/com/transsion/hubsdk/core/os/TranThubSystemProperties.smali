.class public Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;
.super Ljava/lang/Object;
.source "TranThubSystemProperties.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;


# static fields
.field private static mService:Lcom/transsion/hubsdk/os/ITranSystemProperties;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "system_properties"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 24
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/os/ITranSystemProperties$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/ITranSystemProperties;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;->mService:Lcom/transsion/hubsdk/os/ITranSystemProperties;

    .line 25
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;->mService:Lcom/transsion/hubsdk/os/ITranSystemProperties;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/os/ITranSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;->mService:Lcom/transsion/hubsdk/os/ITranSystemProperties;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/os/ITranSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;->mService:Lcom/transsion/hubsdk/os/ITranSystemProperties;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/os/ITranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;->mService:Lcom/transsion/hubsdk/os/ITranSystemProperties;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/os/ITranSystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;->mService:Lcom/transsion/hubsdk/os/ITranSystemProperties;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/os/ITranSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
