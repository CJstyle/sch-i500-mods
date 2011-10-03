.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;
.super Ljava/lang/Object;
.source "InstalledAppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 189
    .local v1, id:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    return v6

    .line 191
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setButtonPressed(Z)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setButtonPressed(Z)V

    .line 195
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 196
    .local v0, appInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 197
    .local v2, packageURI:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .local v3, uninstallIntent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 202
    .end local v0           #appInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v2           #packageURI:Landroid/net/Uri;
    .end local v3           #uninstallIntent:Landroid/content/Intent;
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setButtonPressed(Z)V

    .line 203
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
