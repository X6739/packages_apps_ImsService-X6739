.class public Lcom/transsion/hubsdk/aosp/net/TranAospConnectivityManager;
.super Ljava/lang/Object;
.source "TranAospConnectivityManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startTethering(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Lcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;

    .line 17
    return-void
.end method

.method public stopTethering(I)V
    .locals 0
    .param p1, "type"    # I

    .line 22
    return-void
.end method
