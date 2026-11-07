.class public Lcom/mob/commons/cc/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/commons/cc/q$1;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/mob/commons/cc/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/i$a;)Lcom/mob/commons/cc/i$b;
    .locals 4

    const-string v0, "method name: "

    .line 159
    new-instance v1, Lcom/mob/commons/cc/i$b;

    invoke-direct {v1}, Lcom/mob/commons/cc/i$b;-><init>()V

    .line 161
    :try_start_0
    const-string v2, "isError"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/mob/commons/cc/q$a;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_0
    const-string v2, "getError"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 164
    iget-object p1, p0, Lcom/mob/commons/cc/q$a;->a:Ljava/lang/Throwable;

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_1
    const-string v2, "getResult"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_2

    .line 166
    iget-object p1, p0, Lcom/mob/commons/cc/q$a;->b:Ljava/lang/Object;

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_2
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at line: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/mob/commons/cc/i$a;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/mob/commons/cc/i$b;->c:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 172
    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->c:Ljava/lang/Throwable;

    :goto_0
    return-object v1
.end method

.method public a()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mob/commons/cc/q$a;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
