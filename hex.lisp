(defgeneric test-which-method (object)
  (:method (object)
     (list "This is an object."))

  (:method ((object number))
     (cons "This is a number." (call-next-method)))

  (:method ((object integer))
     (cons "This is an integer." (call-next-method))))

(defclass my-class ()
  ((name :initarg :name
         :initform "No name supplied."
         :reader get-name)
   (tag :initform (gensym) :reader read-tag)
   (value :accessor value-of)))

(defclass)
