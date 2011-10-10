.class Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MultipleContactPicker.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleContactPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsPickerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/widget/AbsListView$RecyclerListener;"
    }
.end annotation


# instance fields
.field private final resource:I

.field final synthetic this$0:Lcom/android/mms/ui/MultipleContactPicker;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultipleContactPicker;Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layoutResource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->this$0:Lcom/android/mms/ui/MultipleContactPicker;

    .line 302
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 303
    iput p3, p0, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->resource:I

    .line 304
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 305
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/ui/MultipleContactPicker;->access$002(Lcom/android/mms/ui/MultipleContactPicker;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 306
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 313
    const/4 v4, 0x0

    .line 315
    .local v4, listItem:Lcom/android/mms/ui/MultipleContactListItem;
    if-nez p2, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->resource:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #listItem:Lcom/android/mms/ui/MultipleContactListItem;
    check-cast v4, Lcom/android/mms/ui/MultipleContactListItem;

    .line 322
    .restart local v4       #listItem:Lcom/android/mms/ui/MultipleContactListItem;
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->this$0:Lcom/android/mms/ui/MultipleContactPicker;

    const v7, 0x7f080066

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MultipleContactPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 323
    .local v3, emptyText:Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v6, p0, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->this$0:Lcom/android/mms/ui/MultipleContactPicker;

    const v7, 0x7f08006a

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MultipleContactPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 325
    .local v5, twSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;
    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 329
    .local v2, contact:Lcom/android/mms/data/Contact;
    sget-object v6, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 330
    .local v1, checkState:Z
    iget-object v6, p0, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->this$0:Lcom/android/mms/ui/MultipleContactPicker;

    invoke-static {v6}, Lcom/android/mms/ui/MultipleContactPicker;->access$000(Lcom/android/mms/ui/MultipleContactPicker;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v2, v6, p1, v1}, Lcom/android/mms/ui/MultipleContactListItem;->bind(Lcom/android/mms/data/Contact;Landroid/graphics/drawable/Drawable;IZ)V

    .line 332
    return-object v4

    .line 319
    .end local v1           #checkState:Z
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #emptyText:Landroid/widget/LinearLayout;
    .end local v5           #twSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/MultipleContactListItem;

    move-object v4, v0

    goto :goto_0
.end method

.method public isChecked(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 336
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 351
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 353
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 356
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MultipleContactListItem;

    move-object v1, v0

    .line 357
    .local v1, item:Lcom/android/mms/ui/MultipleContactListItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MultipleContactListItem;->unbind()V

    .line 358
    return-void
.end method

.method public setChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 340
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 342
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->notifyDataSetChanged()V

    .line 344
    :cond_0
    return-void
.end method

.method public toggle(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->setChecked(IZ)V

    .line 348
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
