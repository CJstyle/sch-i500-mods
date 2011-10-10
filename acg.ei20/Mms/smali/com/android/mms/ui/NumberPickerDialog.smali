.class public Lcom/android/mms/ui/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;,
        Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# static fields
.field private static mRangeMax:I

.field private static mRangeMin:I


# instance fields
.field private final mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInitialNumber:I

.field private final mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 5
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 89
    iput-object p3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 90
    iput p4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mInitialNumber:I

    .line 92
    invoke-virtual {p0, p7}, Lcom/android/mms/ui/NumberPickerDialog;->setTitle(I)V

    .line 95
    const/4 v2, -0x1

    const v3, 0x7f090082

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    const/4 v2, -0x2

    const v3, 0x7f090081

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 102
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/NumberPickerDialog;->setView(Landroid/view/View;)V

    .line 104
    const v2, 0x7f0800ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    .line 105
    sput p6, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    .line 106
    sput p5, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    .line 109
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->twSetMaxInputLength(I)V

    .line 110
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    mul-int/lit8 v3, p6, 0xa

    invoke-virtual {v2, p5, v3}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setRange(II)V

    .line 111
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2, p4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setCurrent(I)V

    .line 112
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setSpeed(J)V

    .line 119
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title"

    .prologue
    .line 71
    const v2, 0x10300a3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    .line 73
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 129
    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->clearFocus()V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v0

    sget v1, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v0

    sget v1, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    if-ge v0, v1, :cond_3

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    sget v1, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    invoke-interface {v0, v1}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 136
    :cond_2
    :goto_0
    return-void

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setCurrent(I)V

    .line 150
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    return-object v0
.end method
