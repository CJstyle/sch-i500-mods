.class Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsbDeviceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceSettingsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceSettingsManager;Lcom/android/server/usb/UsbDeviceSettingsManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbDeviceSettingsManager;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->access$000(Lcom/android/server/usb/UsbDeviceSettingsManager;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"
    .parameter "components"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->access$000(Lcom/android/server/usb/UsbDeviceSettingsManager;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearDefaults(Ljava/lang/String;)V

    .line 199
    return-void
.end method
