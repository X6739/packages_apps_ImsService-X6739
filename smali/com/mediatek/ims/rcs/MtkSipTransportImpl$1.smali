.class Lcom/mediatek/ims/rcs/MtkSipTransportImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkSipTransportImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/MtkSipTransportImpl;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 123
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    const-string v1, "System shutdown received"

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$000(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$102(Z)Z

    .line 128
    return-void
.end method
