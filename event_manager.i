%module event_manager
%{
#include "event_manager.h"
#include "date.h"
%}

typedef struct EventManager_t* EventManager;
typedef enum EventManagerResult_t EventManagerResult;
typedef struct Date_t *Date;


Date dateCreate(int day, int month, int year);
int dateCompare(Date date1, Date date2);
void dateDestroy(Date date);
bool dateGet(Date date, int* day, int* month, int* year);


EventManager createEventManager(Date date);
void destroyEventManager(EventManager em);
EventManagerResult emAddEventByDate(EventManager em, char* event_name, Date date, int event_id);
void emPrintAllEvents(EventManager em, const char* file_name);