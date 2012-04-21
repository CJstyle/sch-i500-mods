.class Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;
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
    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->access$100(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;Z)V

    .line 126
    return-void
.end method
