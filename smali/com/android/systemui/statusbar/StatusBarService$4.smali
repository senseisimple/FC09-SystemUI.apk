.class Lcom/android/systemui/statusbar/StatusBarService$4;
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
    .line 820
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const-string v6, "StatusBarService"

    .line 827
    const/4 v3, 0x0

    .line 829
    .local v3, isSpeakerOn:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 830
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    .line 832
    const-string v4, "phoneext"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v2

    .line 834
    .local v2, iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v2, :cond_1

    .line 835
    if-nez v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephonyExt;->turnOnSpeaker(Z)V

    .line 842
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_1
    return-void

    .line 835
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 837
    :cond_1
    const-string v4, "StatusBarService"

    const-string v5, "failed to get ITelephony interface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 839
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 840
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "StatusBarService"

    const-string v4, "RemoteException from getPhoneInterface()"

    invoke-static {v6, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
