.class Lcom/android/settings/wifi/WifiEnabler$3;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;

.field final synthetic val$builder:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$3;->val$builder:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiEnabler;->access$400(Lcom/android/settings/wifi/WifiEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->val$builder:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 165
    const v0, 0x7f09000a

    .line 166
    .local v0, messageRes:I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiEnabler;->access$600(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 167
    return-void
.end method
