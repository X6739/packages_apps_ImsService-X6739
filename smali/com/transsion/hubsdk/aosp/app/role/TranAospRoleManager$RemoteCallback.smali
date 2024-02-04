.class Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;
.super Ljava/lang/Object;
.source "TranAospRoleManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteCallback"
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;->mListener:Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;

    .line 73
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 77
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteCallback invoke methodName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "onResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;->mListener:Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;->onResult(Landroid/os/Bundle;)V

    .line 82
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
