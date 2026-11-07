.class public Lcom/mob/commons/cc/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/o$a;,
        Lcom/mob/commons/cc/o$c;,
        Lcom/mob/commons/cc/o$b;
    }
.end annotation


# direct methods
.method public static a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private static a([Ljava/lang/Object;)Lcom/mob/commons/cc/o$b;
    .locals 3

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 38
    :cond_0
    new-instance v0, Lcom/mob/commons/cc/o$b;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2, v1}, Lcom/mob/commons/cc/o$b;-><init>(Ljava/lang/Object;Lcom/mob/commons/cc/o$1;)V

    const/4 v1, 0x1

    .line 39
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 40
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/o$b;->a(Ljava/lang/Object;)Lcom/mob/commons/cc/o$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Lcom/mob/commons/cc/o$b;
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/mob/commons/cc/o;->a([Ljava/lang/Object;)Lcom/mob/commons/cc/o$b;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([[B)Lcom/mob/commons/cc/o$b;
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/mob/commons/cc/o;->a([Ljava/lang/Object;)Lcom/mob/commons/cc/o$b;

    move-result-object p0

    return-object p0
.end method
