.class Lcom/android/systemui/statusbar/StatusBarService$5;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarService;->setupQuickPanelCallView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$5;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "StatusBarService"

    .line 852
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 854
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 855
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 860
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$5;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 864
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_1
    return-void

    .line 857
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "StatusBarService"

    const-string v3, "failed to get ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 862
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "StatusBarService"

    const-string v2, "RemoteException from getPhoneInterface()"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
