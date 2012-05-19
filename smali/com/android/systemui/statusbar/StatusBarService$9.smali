.class Lcom/android/systemui/statusbar/StatusBarService$9;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
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
    .line 2076
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v9, "StatusBarService"

    const-string v7, "CL"

    .line 2078
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2079
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2081
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 2125
    :cond_1
    :goto_0
    return-void

    .line 2084
    :cond_2
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2085
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const-string v5, "showSpn"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "spn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "showPlmn"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "plmn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/StatusBarService;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 2091
    :cond_3
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2092
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarService;->updateResources()V

    .line 2095
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$900(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_0

    .line 2098
    :cond_4
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2099
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const-string v5, "state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/StatusBarService;->mHeadsetState:Z

    .line 2100
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarService;->updateResources()V

    goto :goto_0

    :cond_5
    move v5, v8

    .line 2099
    goto :goto_1

    .line 2103
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$1000(Lcom/android/systemui/statusbar/StatusBarService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2105
    const-string v4, "RSSIValue"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2106
    .local v2, sRssi:Ljava/lang/String;
    const-string v4, "CINRValue"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2107
    .local v1, sCinr:Ljava/lang/String;
    const-string v4, "StatusBarService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRCSignalValue, RSSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CINR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const-string v4, "CL"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "CL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2110
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v4, v4, Lcom/android/systemui/statusbar/StatusBarService;->mRcView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2111
    const-string v4, "StatusBarService"

    const-string v4, "hide the RC"

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2119
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " C: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2120
    .local v3, tempRCData:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v4, v4, Lcom/android/systemui/statusbar/StatusBarService;->mRcView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService$9;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v4, v4, Lcom/android/systemui/statusbar/StatusBarService;->mRcView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
