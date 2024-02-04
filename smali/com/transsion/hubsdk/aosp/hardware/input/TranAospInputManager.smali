.class public Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;
.super Ljava/lang/Object;
.source "TranAospInputManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "touchEventHandler"    # Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
