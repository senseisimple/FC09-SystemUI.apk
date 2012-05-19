.class Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const-string v5, "StorageNotification"

    .line 156
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v3}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.ASK_ON_UMS_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    const-string v3, "persist.service.usb.setting"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, choiceMenuOnAsk:I
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v3}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v2

    .line 161
    .local v2, connected:Z
    const-string v3, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive :: choice ASKON ... choiceMenuOnAsk = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 163
    if-ne v2, v6, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-virtual {v3, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 176
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #choiceMenuOnAsk:I
    .end local v2           #connected:Z
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const-string v3, "StorageNotification"

    const-string v3, "onReceive :: ACTION_POWER_DISCONNECTED"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v3}, Lcom/android/systemui/usb/StorageNotification;->access$300(Lcom/android/systemui/usb/StorageNotification;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 172
    :cond_2
    const-string v3, "StorageNotification"

    const-string v3, "onReceive :: skip ACTION_POWER_DISCONNECTED"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
