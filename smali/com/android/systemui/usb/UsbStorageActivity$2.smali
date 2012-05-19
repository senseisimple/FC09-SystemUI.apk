.class Lcom/android/systemui/usb/UsbStorageActivity$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/UsbStorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 110
    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->removeDialog(I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->removeDialog(I)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->finish()V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    goto :goto_0

    .line 122
    :cond_3
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    goto :goto_0
.end method
