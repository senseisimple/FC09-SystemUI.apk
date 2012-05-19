.class Lcom/android/systemui/statusbar/StatusBarService$2;
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
    .line 778
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "StatusBarService"

    .line 785
    :try_start_0
    const-string v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 787
    .local v1, iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 788
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->switchHoldingAndActive()V

    .line 795
    .end local v1           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_0
    return-void

    .line 790
    .restart local v1       #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    const-string v2, "StatusBarService"

    const-string v3, "failed to get ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 792
    .end local v1           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 793
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "StatusBarService"

    const-string v2, "RemoteException from getPhoneInterface()"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
