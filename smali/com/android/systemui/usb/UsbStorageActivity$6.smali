.class Lcom/android/systemui/usb/UsbStorageActivity$6;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iput p2, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$600(Lcom/android/systemui/usb/UsbStorageActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->removeDialog(I)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->removeDialog(I)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iget v1, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->val$id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->showDialog(I)V

    .line 305
    :cond_0
    return-void
.end method
