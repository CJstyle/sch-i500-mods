.class public Lcom/sec/android/app/cradle/TwDayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "TwDayOfMonthCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;
    }
.end annotation


# static fields
.field private static mPrevColumn:I


# instance fields
.field private mColumn:I

.field private mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

.field private mRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mPrevColumn:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    .line 30
    invoke-virtual {p0, p3}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 31
    invoke-virtual {p0, p3}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    .line 32
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .prologue
    .line 118
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 121
    const/4 v0, 0x0

    .line 131
    .local v0, returnValue:Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 134
    :cond_0
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mPrevColumn:I

    .line 135
    return v0

    .line 124
    .end local v0           #returnValue:Z
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->nextMonth()V

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 126
    :goto_1
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 129
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_0
.end method

.method public getColumnOf(I)I
    .locals 1
    .parameter "day"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDayAt(II)I
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 214
    if-nez p2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 215
    .local v0, c:I
    :goto_0
    invoke-super {p0, p1, v0}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v1

    return v1

    .line 214
    .end local v0           #c:I
    :cond_0
    const/4 v1, 0x1

    sub-int v1, p2, v1

    move v0, v1

    goto :goto_0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 63
    :cond_0
    iget v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    if-nez v0, :cond_1

    .line 64
    const/4 v0, -0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 81
    iget v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 233
    if-nez p2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 234
    .local v0, c:I
    :goto_0
    invoke-super {p0, p1, v0}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v1

    return v1

    .line 233
    .end local v0           #c:I
    :cond_0
    const/4 v1, 0x1

    sub-int v1, p2, v1

    move v0, v1

    goto :goto_0
.end method

.method public left()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 145
    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    if-nez v2, :cond_1

    .line 146
    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 147
    const/4 v2, 0x7

    iput v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    .line 152
    :goto_0
    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    iget v3, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const/4 v1, 0x0

    .line 162
    .local v1, returnValue:Z
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 165
    :cond_0
    return v1

    .line 149
    .end local v1           #returnValue:Z
    :cond_1
    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->previousMonth()V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 158
    .local v0, lastDay:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 159
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    .line 160
    const/4 v1, 0x1

    .restart local v1       #returnValue:Z
    goto :goto_1
.end method

.method public right()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 176
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 177
    iput v3, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    .line 182
    :goto_0
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const/4 v0, 0x0

    .line 194
    .local v0, returnValue:Z
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 197
    :cond_0
    return v0

    .line 179
    .end local v0           #returnValue:Z
    :cond_1
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->nextMonth()V

    .line 187
    iput v3, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 188
    iput v3, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    .line 189
    :goto_2
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 190
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    goto :goto_2

    .line 192
    :cond_3
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_1
.end method

.method public setOnCursorMoveListener(Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    .line 202
    return-void
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 2
    .parameter "dayOfMonth"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 71
    invoke-virtual {p0, p1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    .line 72
    sget v0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mPrevColumn:I

    if-nez v0, :cond_0

    .line 73
    iget v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 78
    :cond_1
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 45
    iput p2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 49
    :cond_0
    return-void
.end method

.method public up()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 91
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 94
    const/4 v0, 0x0

    .line 104
    .local v0, returnValue:Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 107
    :cond_0
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mPrevColumn:I

    .line 108
    return v0

    .line 97
    .end local v0           #returnValue:Z
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->previousMonth()V

    .line 98
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    .line 99
    :goto_1
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    iget v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/cradle/TwDayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 102
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_0
.end method
