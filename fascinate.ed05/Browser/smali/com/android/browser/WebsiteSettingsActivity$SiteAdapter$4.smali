.class Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

.field final synthetic val$locationIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    iput-object p2, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;->val$locationIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 453
    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;->val$locationIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-static {v1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$200(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;->val$locationIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-static {v1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$300(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 452
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
