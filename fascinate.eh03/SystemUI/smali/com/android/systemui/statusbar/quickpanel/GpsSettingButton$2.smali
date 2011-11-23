.class Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$2;
.super Ljava/lang/Object;
.source "GpsSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->onDisplayGPSOnAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$2;->this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 131
    return-void
.end method
