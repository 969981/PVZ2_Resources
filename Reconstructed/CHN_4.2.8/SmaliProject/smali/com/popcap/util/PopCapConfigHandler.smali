.class public Lcom/popcap/util/PopCapConfigHandler;
.super Ljava/lang/Object;
.source "PopCapConfigHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private coin_max:I

.field private coin_rate:I

.field private coin_remains:I

.field private in_action:Z

.field private in_coin_max:Z

.field private in_coin_rate:Z

.field private in_coin_remains:Z

.field private in_id:Z

.field private in_interval:Z

.field private in_lastTimeSend:Z

.field private in_notification:Z

.field private in_server_url:Z

.field private in_text:Z

.field private in_title:Z

.field private in_type:Z

.field private lastTimeSend:J

.field private notification_action:I

.field private notification_id:I

.field private notification_interval:J

.field private notification_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private notification_text:Ljava/lang/String;

.field private notification_title:Ljava/lang/String;

.field private notification_type:I

.field private server_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_server_url:Z

    .line 32
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_notification:Z

    .line 33
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_id:Z

    .line 34
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_type:Z

    .line 35
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_action:Z

    .line 36
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_title:Z

    .line 37
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_text:Z

    .line 38
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_interval:Z

    .line 39
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_lastTimeSend:Z

    .line 40
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_remains:Z

    .line 41
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_max:Z

    .line 42
    iput-boolean v0, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_rate:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/popcap/util/PopCapConfigHandler;->server_url:Ljava/lang/String;

    const/4 v1, -0x1

    .line 45
    iput v1, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_id:I

    .line 46
    iput v1, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_type:I

    .line 47
    iput v1, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_action:I

    .line 48
    iput-object v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_title:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_text:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 50
    iput-wide v2, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_interval:J

    .line 51
    iput-wide v2, p0, Lcom/popcap/util/PopCapConfigHandler;->lastTimeSend:J

    .line 52
    iput v1, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_remains:I

    .line 53
    iput v1, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_max:I

    .line 54
    iput v1, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_rate:I

    .line 56
    iput-object v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_list:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_list:Ljava/util/ArrayList;

    return-void
.end method

.method public static printNotificationList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;)V"
        }
    .end annotation

    .line 317
    const-string v0, "DEBUG"

    if-nez p0, :cond_0

    .line 318
    const-string p0, "null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 322
    const-string v1, "listsize = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/util/PopCapNotificationAbstract;

    .line 325
    invoke-virtual {v1}, Lcom/popcap/util/PopCapNotificationAbstract;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 174
    :cond_0
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_server_url:Z

    if-eqz p2, :cond_1

    .line 175
    iput-object p1, p0, Lcom/popcap/util/PopCapConfigHandler;->server_url:Ljava/lang/String;

    .line 178
    :cond_1
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_notification:Z

    if-nez p2, :cond_2

    return-void

    .line 181
    :cond_2
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_id:Z

    const-string p3, "notification_id error in parse: "

    if-eqz p2, :cond_3

    .line 183
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    new-instance p2, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 189
    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_type:Z

    if-eqz p2, :cond_4

    .line 191
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 193
    :catch_1
    new-instance p2, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 197
    :cond_4
    :goto_1
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_action:Z

    if-eqz p2, :cond_5

    .line 199
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_action:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 201
    :catch_2
    new-instance p2, Lorg/xml/sax/SAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "notification_action error in parse: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 205
    :cond_5
    :goto_2
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_title:Z

    if-eqz p2, :cond_6

    .line 206
    iput-object p1, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_title:Ljava/lang/String;

    .line 208
    :cond_6
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_text:Z

    if-eqz p2, :cond_7

    .line 209
    iput-object p1, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_text:Ljava/lang/String;

    .line 211
    :cond_7
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_interval:Z

    if-eqz p2, :cond_8

    .line 213
    :try_start_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_interval:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 215
    :catch_3
    new-instance p2, Lorg/xml/sax/SAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "notification_interval error in parse: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 220
    :cond_8
    :goto_3
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_lastTimeSend:Z

    if-eqz p2, :cond_9

    .line 223
    :try_start_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/popcap/util/PopCapConfigHandler;->lastTimeSend:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 225
    :catch_4
    new-instance p2, Lorg/xml/sax/SAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "lastTimeSend error in parse: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 230
    :cond_9
    :goto_4
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_remains:Z

    if-eqz p2, :cond_a

    .line 232
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_remains:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 234
    :catch_5
    new-instance p2, Lorg/xml/sax/SAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "coin_remains error in parse: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 239
    :cond_a
    :goto_5
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_max:Z

    if-eqz p2, :cond_b

    .line 241
    :try_start_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_max:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 243
    :catch_6
    new-instance p2, Lorg/xml/sax/SAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "coin_max error in parse: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 248
    :cond_b
    :goto_6
    iget-boolean p2, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_rate:Z

    if-eqz p2, :cond_c

    .line 250
    :try_start_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_rate:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    .line 252
    :catch_7
    new-instance p2, Lorg/xml/sax/SAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "coin_rate error in parse: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_c
    :goto_7
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 122
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 123
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 124
    const-string p2, "server_url"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 126
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_server_url:Z

    .line 128
    :cond_1
    const-string p2, "notification"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 130
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_notification:Z

    .line 131
    invoke-virtual {p0}, Lcom/popcap/util/PopCapConfigHandler;->initNotificationByType()V

    const/4 p2, -0x1

    .line 132
    iput p2, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_type:I

    .line 134
    :cond_2
    const-string p2, "id"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 135
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_id:Z

    .line 137
    :cond_3
    const-string p2, "type"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 138
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_type:Z

    .line 140
    :cond_4
    const-string p2, "action"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 141
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_action:Z

    .line 143
    :cond_5
    const-string p2, "title"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 144
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_title:Z

    .line 146
    :cond_6
    const-string p2, "text"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 147
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_text:Z

    .line 149
    :cond_7
    const-string p2, "interval"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 150
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_interval:Z

    .line 152
    :cond_8
    const-string p2, "last_send_time"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 153
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_lastTimeSend:Z

    .line 155
    :cond_9
    const-string p2, "coin_remains"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 156
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_remains:Z

    .line 158
    :cond_a
    const-string p2, "coin_max"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 159
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_max:Z

    .line 161
    :cond_b
    const-string p2, "coinRate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 162
    iput-boolean p3, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_rate:Z

    :cond_c
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getNotificationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/popcap/util/PopCapConfigHandler;->server_url:Ljava/lang/String;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public initNotificationByType()V
    .locals 9

    .line 260
    iget v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 272
    const-string v0, "DEBUG"

    const-string v1, "Undefined notification type!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_0
    new-instance v0, Lcom/popcap/util/PopCapNotificationForPlay;

    .line 263
    iget v3, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_id:I

    iget-object v4, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_title:Ljava/lang/String;

    iget-object v5, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_text:Ljava/lang/String;

    .line 264
    iget-wide v6, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_interval:J

    iget v8, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_action:I

    move-object v2, v0

    .line 262
    invoke-direct/range {v2 .. v8}, Lcom/popcap/util/PopCapNotificationForPlay;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 265
    iget-wide v1, p0, Lcom/popcap/util/PopCapConfigHandler;->lastTimeSend:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 266
    iput-wide v1, v0, Lcom/popcap/util/PopCapNotificationForPlay;->lastSendTime:J

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 65
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 67
    const-string p2, "server_url"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_1

    .line 69
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_server_url:Z

    .line 70
    iput-object p3, p0, Lcom/popcap/util/PopCapConfigHandler;->server_url:Ljava/lang/String;

    .line 73
    :cond_1
    const-string p2, "notification"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    .line 74
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_notification:Z

    .line 75
    iput v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_type:I

    .line 77
    :cond_2
    const-string p2, "id"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 78
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_id:Z

    .line 79
    iput v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_id:I

    .line 81
    :cond_3
    const-string p2, "type"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 82
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_type:Z

    .line 83
    iput v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_type:I

    .line 85
    :cond_4
    const-string p2, "action"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 86
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_action:Z

    .line 87
    iput v0, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_action:I

    .line 89
    :cond_5
    const-string p2, "title"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 90
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_title:Z

    .line 91
    iput-object p3, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_title:Ljava/lang/String;

    .line 93
    :cond_6
    const-string p2, "text"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 94
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_text:Z

    .line 95
    iput-object p3, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_text:Ljava/lang/String;

    .line 97
    :cond_7
    const-string p2, "interval"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v1, -0x1

    if-eqz p2, :cond_8

    .line 98
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_interval:Z

    .line 99
    iput-wide v1, p0, Lcom/popcap/util/PopCapConfigHandler;->notification_interval:J

    .line 101
    :cond_8
    const-string p2, "last_send_time"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 102
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_lastTimeSend:Z

    .line 103
    iput-wide v1, p0, Lcom/popcap/util/PopCapConfigHandler;->lastTimeSend:J

    .line 105
    :cond_9
    const-string p2, "coin_remains"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 106
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_remains:Z

    .line 107
    iput v0, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_remains:I

    .line 109
    :cond_a
    const-string p2, "coin_max"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 110
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_max:Z

    .line 111
    iput v0, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_max:I

    .line 113
    :cond_b
    const-string p2, "coinRate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 114
    iput-boolean p4, p0, Lcom/popcap/util/PopCapConfigHandler;->in_coin_rate:Z

    .line 115
    iput v0, p0, Lcom/popcap/util/PopCapConfigHandler;->coin_rate:I

    :cond_c
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
