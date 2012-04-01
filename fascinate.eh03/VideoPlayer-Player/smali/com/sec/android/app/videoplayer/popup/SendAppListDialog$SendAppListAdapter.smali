.class Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SendAppListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppListAdapter;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 319
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 324
    move-object v3, p2

    .line 326
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 328
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppListAdapter;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$800(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 329
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 332
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;

    .line 334
    .local v2, ti:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;
    if-eqz v2, :cond_2

    .line 337
    const/high16 v5, 0x7f0a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 338
    .local v0, appicon:Landroid/widget/ImageView;
    const v5, 0x7f0a0001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 340
    .local v1, appname:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_1
    if-eqz v1, :cond_2

    .line 344
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .end local v0           #appicon:Landroid/widget/ImageView;
    .end local v1           #appname:Landroid/widget/TextView;
    :cond_2
    return-object v3
.end method
