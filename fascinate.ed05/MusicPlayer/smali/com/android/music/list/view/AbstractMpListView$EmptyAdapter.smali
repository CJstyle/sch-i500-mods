.class Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;
.super Ljava/lang/Object;
.source "AbstractMpListView.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lcom/android/music/list/interfaces/MpSetViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/AbstractMpListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/AbstractMpListView;


# direct methods
.method private constructor <init>(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2424
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/list/view/AbstractMpListView;Lcom/android/music/list/view/AbstractMpListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2424
    invoke-direct {p0, p1}, Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 2427
    const/4 v0, 0x0

    return v0
.end method

.method public getChecked()[Z
    .locals 1

    .prologue
    .line 2475
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2435
    const/4 v0, 0x0

    return v0
.end method

.method public getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    .locals 1

    .prologue
    .line 2480
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2439
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2443
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2447
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2451
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2455
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 2459
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2463
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2431
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 2468
    return-void
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 2485
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2498
    return-void
.end method

.method public setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0
    .parameter "mindex"

    .prologue
    .line 2489
    return-void
.end method

.method public setListView(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2493
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 2472
    return-void
.end method
