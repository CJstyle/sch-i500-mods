.class Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$2;
.super Ljava/lang/Object;
.source "MobileDataSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->onDisplayMobileDataOffAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$2;->this$0:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$2;->this$0:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;

    const/4 v1, 0x0

    #calls: Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->access$300(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;Z)V

    .line 156
    return-void
.end method
