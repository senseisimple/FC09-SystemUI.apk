.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 1164
    const-string v2, "StatusBarPolicy"

    const-string v3, "mDisChargeListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1902(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1167
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2002(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1168
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1169
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 1171
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long v0, v2, v4

    .line 1173
    .local v0, when:J
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x1000

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1174
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1177
    .end local v0           #when:J
    :cond_0
    return-void
.end method
