.class public Lcom/android/systemui/usb/UsbConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 106
    :try_start_0
    const-string v6, "usb"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 107
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 108
    .local v4, service:Landroid/hardware/usb/IUsbManager;
    iget-object v6, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 109
    .local v5, uid:I
    iget-object v6, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 110
    .local v0, alwaysUse:Z
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "accessory"

    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    iget-object v6, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v4, v6, v5}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 120
    if-eqz v0, :cond_1

    .line 121
    iget-object v6, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    .line 126
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/usb/UsbConfirmActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0           #alwaysUse:Z
    .end local v1           #b:Landroid/os/IBinder;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #service:Landroid/hardware/usb/IUsbManager;
    .end local v5           #uid:I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->finish()V

    .line 132
    return-void

    .line 124
    .restart local v0       #alwaysUse:Z
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #service:Landroid/hardware/usb/IUsbManager;
    .restart local v5       #uid:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    .end local v0           #alwaysUse:Z
    .end local v1           #b:Landroid/os/IBinder;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #service:Landroid/hardware/usb/IUsbManager;
    .end local v5           #uid:I
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 128
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "UsbConfirmActivity"

    const-string v7, "Unable to start activity"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 64
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "accessory"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbAccessory;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 65
    new-instance v5, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 66
    const-string v5, "rinfo"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 69
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, appName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 72
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 74
    const v5, 0x7f080026

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/usb/UsbConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 75
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 76
    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 77
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbConfirmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 83
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109001b

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 84
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v6, 0x1020199

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 85
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v6, 0x7f08002a

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 86
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v6, 0x102019a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    .line 89
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->setupAlert()V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 101
    return-void
.end method
