.class public Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;,
        Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_3g:[[I

.field private static final sDataNetType_e:[[I

.field private static final sDataNetType_g:[[I

.field private static final sDataNetType_h:[[I

.field private static final sRoamingIndicatorImages_cdma:[I

.field private static final sSignalImages:[[I

.field private static final sSignalImages_cdma:[I

.field private static final sSignalImages_cdma_r:[I

.field private static final sSignalImages_cdma_r_flash:[I

.field private static final sSignalImages_r:[[I

.field private static final sWifiSignalImages:[[I

.field private static final sWimaxSignalImages:[I


# instance fields
.field private final WIMAX_NOTIFICATION_ID:I

.field private enabled:Z

.field private mBattIntent:Landroid/app/PendingIntent;

.field private mBatteryFirst:Z

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothPbapState:I

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private mDisChargeDialog:Landroid/app/AlertDialog;

.field private mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDisChargeTextView:Landroid/widget/TextView;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDisCharged:Z

.field private mIsFullCharged:Z

.field private mIsWifiConnected:Z

.field private mIsWimaxConnected:Z

.field private mIsWimaxEnabled:Z

.field private mIsWimaxIdle:Z

.field private mLastWifiSignalLevel:I

.field private mLastWimaxSignalLevel:I

.field private mLastWimaxState:Landroid/net/wimax/WimaxState;

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mMyContext:Landroid/content/Context;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z

.field private mWL:Landroid/os/PowerManager$WakeLock;

.field private final mWimaxIconSlot:Ljava/lang/String;

.field private mWimaxNoti:Landroid/app/Notification;

.field private mWimaxNotiFlag:Z

.field private mWimaxSignal:I

.field private mWimaxState:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 175
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    .line 187
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    .line 201
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_cdma:[I

    .line 212
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_cdma_r:[I

    .line 223
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_cdma_r_flash:[I

    .line 233
    const/16 v0, 0xf0

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 492
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    .line 502
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    .line 512
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    .line 523
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h:[[I

    .line 536
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    .line 570
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    .line 609
    new-array v0, v6, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[I

    return-void

    .line 175
    :array_0
    .array-data 0x4
        0x83t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x84t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 187
    :array_2
    .array-data 0x4
        0x73t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x74t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 201
    :array_4
    .array-data 0x4
        0x7ft 0x3t 0x8t 0x1t
        0x80t 0x3t 0x8t 0x1t
        0x81t 0x3t 0x8t 0x1t
        0x82t 0x3t 0x8t 0x1t
        0x83t 0x3t 0x8t 0x1t
        0x84t 0x3t 0x8t 0x1t
        0x85t 0x3t 0x8t 0x1t
    .end array-data

    .line 212
    :array_5
    .array-data 0x4
        0x71t 0x3t 0x8t 0x1t
        0x72t 0x3t 0x8t 0x1t
        0x73t 0x3t 0x8t 0x1t
        0x74t 0x3t 0x8t 0x1t
        0x75t 0x3t 0x8t 0x1t
        0x76t 0x3t 0x8t 0x1t
        0x77t 0x3t 0x8t 0x1t
    .end array-data

    .line 223
    :array_6
    .array-data 0x4
        0x78t 0x3t 0x8t 0x1t
        0x79t 0x3t 0x8t 0x1t
        0x7at 0x3t 0x8t 0x1t
        0x7bt 0x3t 0x8t 0x1t
        0x7ct 0x3t 0x8t 0x1t
        0x7dt 0x3t 0x8t 0x1t
        0x7et 0x3t 0x8t 0x1t
    .end array-data

    .line 233
    :array_7
    .array-data 0x4
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 492
    :array_8
    .array-data 0x4
        0x39t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x3ft 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 502
    :array_a
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
    .end array-data

    .line 512
    :array_c
    .array-data 0x4
        0x38t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0x3et 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
    .end array-data

    .line 523
    :array_e
    .array-data 0x4
        0x3at 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x40t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 536
    :array_10
    .array-data 0x4
        0x35t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0x3bt 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
    .end array-data

    .line 570
    :array_12
    .array-data 0x4
        0x91t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0x92t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
    .end array-data

    .line 609
    :array_14
    .array-data 0x4
        0xa1t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v10, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    const-string v9, "alarm_clock"

    const-string v8, "wimax"

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 142
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 149
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 490
    sget-object v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    aget-object v3, v3, v6

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 549
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 550
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 551
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 552
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 583
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 584
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 601
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    .line 602
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    .line 603
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    .line 606
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 619
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxSignalLevel:I

    .line 620
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 621
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxIdle:Z

    .line 622
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNotiFlag:Z

    .line 623
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->enabled:Z

    .line 624
    const-string v3, "wimax"

    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxIconSlot:Ljava/lang/String;

    .line 625
    sget-object v3, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxState:Landroid/net/wimax/WimaxState;

    .line 627
    const v3, 0x7f0200a6

    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->WIMAX_NOTIFICATION_ID:I

    .line 628
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNoti:Landroid/app/Notification;

    .line 635
    new-instance v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1153
    new-instance v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1162
    new-instance v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1248
    new-instance v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 715
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 716
    const-string v3, "statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 717
    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 718
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 721
    const-string v3, "storage"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 722
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v4, Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {v4, p1}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 726
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "battery"

    const v5, 0x10802d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 729
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 730
    const v3, 0x7f02008e

    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 731
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "phone_signal"

    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 734
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x1e1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 743
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "data_connection"

    const v5, 0x7f020039

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 744
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "data_connection"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 747
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    sget-object v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v5, v5, v6

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 748
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 753
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wimax"

    sget-object v4, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[I

    aget v4, v4, v6

    invoke-virtual {v3, v8, v4, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 754
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wimax"

    invoke-virtual {v3, v8, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 759
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    const v5, 0x7f02008f

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 760
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 763
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    const v5, 0x7f02007f

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 764
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 767
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    const v5, 0x7f020033

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 768
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 769
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 774
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    .line 775
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 776
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    .line 777
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 780
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "gps"

    const v5, 0x7f020071

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 781
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 784
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "alarm_clock"

    const v4, 0x7f020030

    invoke-virtual {v3, v9, v4, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 785
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "alarm_clock"

    invoke-virtual {v3, v9, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 788
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "sync_active"

    const v5, 0x10802af

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 789
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "sync_failing"

    const v5, 0x10802b0

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 790
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "sync_active"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 791
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "sync_failing"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 794
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "volume"

    const v5, 0x7f02007d

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 795
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "volume"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 796
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    .line 798
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 801
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v3, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v3, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string v3, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v3, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string v3, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    const-string v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v3, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v3, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    const-string v3, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v3, "android.net.wimax.MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v3, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v3, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 830
    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v3, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    const-string v3, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    const-string v3, "com.sec.android.service.statusbar.COLLAPSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 841
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :goto_1
    return-void

    .line 772
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_0

    .line 843
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 844
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mMyContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWimax(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method private addFullChargeNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2018
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2019
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2021
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020032

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2022
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 2023
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2024
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2026
    const/high16 v1, 0x701

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private addWimaxNotification(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2039
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wimax_networks_available_notification_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->removeWimaxNotification()V

    .line 2054
    :goto_0
    return-void

    .line 2044
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNoti:Landroid/app/Notification;

    if-nez v0, :cond_1

    .line 2045
    new-instance v0, Landroid/app/Notification;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNoti:Landroid/app/Notification;

    .line 2051
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNoti:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.WIMAX_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2052
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2053
    const v1, 0x7f0200a6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNoti:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNoti:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 2049
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNoti:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1190
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 1193
    :cond_0
    return-void
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1345
    :pswitch_0
    const/4 v0, 0x1

    .line 1348
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1343
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1348
    goto :goto_0

    .line 1340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1322
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v5

    .line 1323
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdma = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v5

    :goto_1
    return v0

    :cond_0
    move v0, v4

    .line 1322
    goto :goto_0

    :cond_1
    move v0, v4

    .line 1324
    goto :goto_1
.end method

.method private isThereKeyguard()Z
    .locals 2

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 2005
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isThereKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 968
    :cond_0
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 976
    :cond_0
    return-void
.end method

.method private playTone(I)V
    .locals 3
    .parameter

    .prologue
    .line 1107
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 1111
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1113
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1114
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1119
    :goto_0
    return-void

    .line 1116
    :cond_0
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 1117
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private removeFullChargeNotification()V
    .locals 2

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 2035
    const/high16 v0, 0x701

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2036
    return-void
.end method

.method private removeWimaxNotification()V
    .locals 2

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 2058
    const v0, 0x7f0200a6

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2059
    return-void
.end method

.method private showDisChargePopup(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "StatusBarPolicy"

    .line 1070
    const-string v0, "StatusBarPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDisChargePopup() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1073
    const/4 v1, 0x6

    const-string v2, "StatusBarPolicy"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    :goto_0
    if-eqz p1, :cond_1

    .line 1100
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    .line 1104
    :goto_1
    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f03

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1082
    const/high16 v0, 0x7f0a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1086
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1087
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1088
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1089
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1090
    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1092
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1093
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1094
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1095
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1096
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1102
    :cond_1
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    goto :goto_1
.end method

.method private showLowBatteryWarning()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 990
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 1003
    iget v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    const/4 v10, 0x5

    if-le v9, v10, :cond_1

    .line 1004
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f08001f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1010
    .local v4, levelText:Ljava/lang/CharSequence;
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 1011
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1050
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v9, "power_sounds_enabled"

    invoke-static {v1, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 1053
    const-string v9, "low_battery_sound"

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1055
    .local v6, soundPath:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1056
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1057
    .local v7, soundUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 1058
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 1059
    .local v5, sfx:Landroid/media/Ringtone;
    if-eqz v5, :cond_0

    .line 1060
    invoke-virtual {v5, v11}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1061
    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    .line 1066
    .end local v5           #sfx:Landroid/media/Ringtone;
    .end local v6           #soundPath:Ljava/lang/String;
    .end local v7           #soundUri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 1006
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #levelText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f080020

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #levelText:Ljava/lang/CharSequence;
    goto :goto_0

    .line 1013
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f030001

    invoke-static {v9, v10, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1014
    .local v8, v:Landroid/view/View;
    const v9, 0x7f0a0003

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 1016
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1019
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1020
    const v9, 0x7f080006

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1021
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1022
    const v9, 0x1080027

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1023
    const v9, 0x104000a

    invoke-virtual {v0, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1025
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x5880

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1030
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1031
    const v9, 0x7f080009

    new-instance v10, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;

    invoke-direct {v10, p0, v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1042
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1043
    .local v2, d:Landroid/app/AlertDialog;
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1044
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 1045
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1046
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method private turnOnScreenWithForce()V
    .locals 5

    .prologue
    .line 2010
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 2012
    .local v0, tPMS:Landroid/os/IPowerManager;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2015
    :goto_0
    return-void

    .line 2013
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 849
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 850
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 851
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "level"

    const-string v12, "alarm"

    .line 862
    const-string v6, "icon-small"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 863
    .local v2, id:I
    const-string v6, "level"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 864
    .local v3, level:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "battery"

    invoke-virtual {v6, v7, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 866
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v5, v10

    .line 867
    .local v5, plugged:Z
    :goto_0
    const-string v6, "level"

    const/4 v6, -0x1

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 876
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 878
    .local v4, oldPlugged:Z
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 879
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    .line 881
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v6, :cond_0

    .line 882
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 896
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntent:Landroid/content/Intent;

    .line 898
    const-string v6, "status"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 899
    .local v1, batteryStatus:I
    const-string v6, "health"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 900
    .local v0, batteryHealth:I
    const-string v6, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BAT. S:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " H:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    if-ne v1, v11, :cond_5

    .line 903
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    if-eqz v6, :cond_2

    .line 904
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    .line 905
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    .line 906
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 909
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_2

    .line 910
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 914
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    if-eqz v6, :cond_3

    .line 915
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    .line 916
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->removeFullChargeNotification()V

    .line 948
    :cond_3
    :goto_1
    return-void

    .end local v0           #batteryHealth:I
    .end local v1           #batteryStatus:I
    .end local v4           #oldPlugged:Z
    .end local v5           #plugged:Z
    :cond_4
    move v5, v9

    .line 866
    goto :goto_0

    .line 919
    .restart local v0       #batteryHealth:I
    .restart local v1       #batteryStatus:I
    .restart local v4       #oldPlugged:Z
    .restart local v5       #plugged:Z
    :cond_5
    const/4 v6, 0x4

    if-ne v1, v6, :cond_8

    .line 920
    if-eq v0, v11, :cond_6

    const/4 v6, 0x7

    if-ne v0, v6, :cond_3

    .line 922
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isThereKeyguard()Z

    move-result v6

    if-nez v6, :cond_7

    .line 923
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_7

    .line 924
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showDisChargePopup(Z)V

    .line 927
    :cond_7
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    goto :goto_1

    .line 930
    :cond_8
    const/4 v6, 0x5

    if-ne v1, v6, :cond_9

    .line 931
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    if-nez v6, :cond_3

    .line 932
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    .line 933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->addFullChargeNotification()V

    goto :goto_1

    .line 936
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 937
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    .line 939
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_a

    .line 940
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 943
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3

    .line 944
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "bluetooth"

    .line 1655
    const v0, 0x7f020033

    .line 1656
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1657
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1658
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1659
    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1677
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    if-ne v1, v5, :cond_1

    .line 1679
    :cond_0
    const v0, 0x7f020034

    .line 1691
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v6, v0, v3, v3}, Landroid/app/StatusBarManager;->setIconWithVisible(Ljava/lang/String;IIZ)V

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1694
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 1659
    goto :goto_0

    .line 1660
    :cond_4
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1661
    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 1663
    :cond_5
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1664
    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1665
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1666
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1668
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1670
    :cond_7
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1671
    const-string v1, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    goto :goto_1
.end method

.method private final updateCallState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1123
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 1129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 1130
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 1131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 1133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isThereKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1151
    :cond_1
    :goto_0
    return-void

    .line 1141
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1146
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "StatusBarPolicy"

    const-string v5, "wifi"

    .line 1196
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1198
    const-string v1, "inetCondition"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1200
    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    move v1, v4

    .line 1202
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1246
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 1200
    goto :goto_0

    .line 1204
    :sswitch_0
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateConnectivity-TYPE_MOBILE"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1206
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    .line 1207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 1208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 1211
    :sswitch_1
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateConnectivity-TYPE_WIFI"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1213
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1214
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1216
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v6, :cond_1

    .line 1217
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 1221
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1233
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 1219
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_2

    .line 1225
    :cond_2
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1226
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1227
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v0, v0, v3

    aget v0, v0, v3

    .line 1229
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1236
    :sswitch_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1237
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1238
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1243
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWimax(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1241
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    goto :goto_4

    .line 1202
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateDataIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "data_connection"

    .line 1568
    .line 1570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 1573
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_2

    .line 1574
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_0

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1588
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    .line 1622
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1624
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1630
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v1, v0, :cond_1

    .line 1631
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1632
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    .line 1634
    :cond_1
    return-void

    .line 1576
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_0

    .line 1579
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_0

    .line 1582
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1590
    goto :goto_1

    .line 1593
    :cond_3
    const v0, 0x7f020072

    .line 1594
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1598
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_5

    .line 1599
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1614
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1601
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_3

    .line 1604
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_3

    .line 1607
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_3

    .line 1617
    :cond_5
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    move v0, v3

    .line 1618
    goto :goto_1

    .line 1625
    :catch_0
    move-exception v3

    .line 1627
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1599
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 3
    .parameter

    .prologue
    .line 1521
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType-T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    packed-switch p1, :pswitch_data_0

    .line 1561
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 1564
    :goto_0
    return-void

    .line 1524
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1527
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1532
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 1533
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1535
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1543
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1549
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1554
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1522
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "gps"

    .line 1878
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1879
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1883
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x10802dc

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1886
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1909
    :goto_0
    return-void

    .line 1887
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 1889
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1892
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x7f020071

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1893
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateSignalStrength()V
    .locals 9

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "phone_signal"

    .line 1353
    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1362
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1363
    :cond_0
    const-string v0, "StatusBarPolicy"

    const-string v1, "updateSignalStrength: No SVC"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1366
    const v0, 0x7f02008d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1370
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v6, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1475
    :goto_1
    return-void

    .line 1368
    :cond_1
    const v0, 0x7f02008e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 1374
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v0

    .line 1410
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1411
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    .line 1417
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "phone_signal"

    invoke-virtual {v2, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 1472
    :goto_3
    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v6, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1413
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    goto :goto_2

    .line 1421
    :cond_4
    if-ne v0, v7, :cond_5

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    invoke-virtual {v0, v6, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1429
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    .line 1430
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v1

    .line 1432
    if-ne v0, v5, :cond_6

    .line 1433
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_cdma:[I

    .line 1442
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1443
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    .line 1446
    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    move v1, v4

    goto :goto_3

    .line 1426
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    invoke-virtual {v0, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1435
    :cond_6
    if-nez v1, :cond_7

    .line 1436
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_cdma_r:[I

    goto :goto_5

    .line 1438
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_cdma_r_flash:[I

    goto :goto_5

    .line 1447
    :cond_8
    const/16 v2, -0x4b

    if-lt v1, v2, :cond_9

    move v1, v7

    goto :goto_3

    .line 1448
    :cond_9
    const/16 v2, -0x55

    if-lt v1, v2, :cond_a

    const/4 v1, 0x5

    goto :goto_3

    .line 1449
    :cond_a
    const/16 v2, -0x5a

    if-lt v1, v2, :cond_b

    move v1, v3

    goto :goto_3

    .line 1450
    :cond_b
    const/16 v2, -0x5f

    if-lt v1, v2, :cond_c

    const/4 v1, 0x3

    goto :goto_3

    .line 1451
    :cond_c
    const/16 v2, -0x64

    if-lt v1, v2, :cond_d

    const/4 v1, 0x2

    goto :goto_3

    .line 1452
    :cond_d
    const/16 v2, -0x69

    if-lt v1, v2, :cond_e

    move v1, v5

    goto :goto_3

    :cond_e
    move v1, v4

    .line 1453
    goto :goto_3
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1293
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1314
    :goto_0
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimState-S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 1316
    return-void

    .line 1297
    :cond_0
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1298
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1300
    :cond_1
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1301
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    const-string v1, "PIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1303
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1305
    :cond_2
    const-string v1, "PUK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1306
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1309
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1312
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 854
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 855
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 856
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 859
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "tty"

    .line 1912
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1913
    const-string v0, "ttyEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1917
    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v1, 0x7f02008f

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1921
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1927
    :goto_0
    return-void

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v3, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "volume"

    .line 1637
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1638
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1639
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_3

    :cond_0
    move v1, v2

    .line 1641
    :goto_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02007e

    .line 1645
    :goto_1
    if-eqz v1, :cond_1

    .line 1646
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    invoke-virtual {v2, v5, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1648
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v1, v0, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "volume"

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1650
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    .line 1652
    :cond_2
    return-void

    :cond_3
    move v1, v4

    .line 1639
    goto :goto_0

    .line 1641
    :cond_4
    const v0, 0x7f02007d

    goto :goto_1
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "wifi"

    .line 1697
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1698
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1700
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 1703
    :goto_0
    if-nez v0, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1759
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 1700
    goto :goto_0

    .line 1718
    :cond_2
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1720
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1721
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1723
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v0, v1, :cond_0

    .line 1724
    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1725
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v1, :cond_3

    .line 1726
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 1730
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v4, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1728
    :cond_3
    const v0, 0x7f020090

    goto :goto_2

    .line 1735
    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1739
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1740
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1741
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v5, :cond_5

    .line 1748
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1744
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_3

    .line 1750
    :cond_6
    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1751
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1755
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private final updateWimax(Landroid/content/Intent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "wimax"

    .line 1763
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1764
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1765
    const-string v0, "wimax_status"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1766
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received WimaxStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    if-ne v0, v8, :cond_1

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->enabled:Z

    .line 1769
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->enabled:Z

    if-eqz v0, :cond_2

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v6, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1852
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v5

    .line 1767
    goto :goto_0

    .line 1774
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->removeWimaxNotification()V

    goto :goto_1

    .line 1777
    :cond_3
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1778
    const-string v0, "WimaxState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wimax/WimaxState;

    .line 1779
    const-string v1, "WimaxStateDetail"

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1780
    const-string v2, "StatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received WimaxState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newDetailedState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->enabled:Z

    if-eqz v2, :cond_0

    .line 1783
    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->$SwitchMap$android$net$wimax$WimaxState:[I

    invoke-virtual {v0}, Landroid/net/wimax/WimaxState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1789
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxState:Landroid/net/wimax/WimaxState;

    if-eq v1, v0, :cond_0

    .line 1790
    iput v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxSignalLevel:I

    .line 1791
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 1792
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxIdle:Z

    .line 1793
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxState:Landroid/net/wimax/WimaxState;

    .line 1794
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    const v2, 0x7f0200a6

    invoke-virtual {v1, v6, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1795
    sget-object v1, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNotiFlag:Z

    if-eqz v0, :cond_0

    .line 1796
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNotiFlag:Z

    .line 1797
    const v0, 0x7f0200a6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->addWimaxNotification(ILjava/lang/String;)V

    .line 1798
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->removeWimaxNotification()V

    goto/16 :goto_1

    .line 1804
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxState:Landroid/net/wimax/WimaxState;

    if-eq v2, v0, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    if-nez v2, :cond_4

    .line 1805
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 1806
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxState:Landroid/net/wimax/WimaxState;

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxSignalLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v6, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1810
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->addWimaxNotification(ILjava/lang/String;)V

    .line 1811
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->removeWimaxNotification()V

    .line 1812
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxNotiFlag:Z

    goto/16 :goto_1

    .line 1814
    :cond_4
    const/4 v0, 0x6

    if-ne v1, v0, :cond_5

    .line 1815
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxIdle:Z

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[I

    aget v1, v1, v9

    invoke-virtual {v0, v6, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1818
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxIdle:Z

    .line 1819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxSignalLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v6, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1827
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxState:Landroid/net/wimax/WimaxState;

    if-eq v1, v0, :cond_0

    .line 1828
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 1829
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxIdle:Z

    .line 1830
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxState:Landroid/net/wimax/WimaxState;

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f0200a0

    invoke-virtual {v0, v6, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1836
    :cond_6
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1838
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received newSignalLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastWimaxSignalLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxSignalLevel:I

    if-eq v0, v1, :cond_0

    .line 1841
    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWimaxSignalLevel:I

    .line 1842
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    if-eqz v1, :cond_0

    .line 1843
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxIdle:Z

    if-eqz v1, :cond_7

    .line 1844
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[I

    aget v1, v1, v9

    invoke-virtual {v0, v6, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1847
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[I

    aget v0, v2, v0

    invoke-virtual {v1, v6, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
