;;; Hexcrawler package
;;;
;;; by definition, hexes are aligned horizontally
;;; hex 0101 is on the top left of the map, and is leftmost
;;; (therefore hex 0201 is below and to the right of 0101)
;;; (also, even numbered rows are always biased to the right)

(defpackage hexcrawler
  (:use :cl))

(in-package hexcrawler)

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


(defclass hex ()
    ((x :initarg :x
        :accessor x)
     (y :initarg :y
        :accessor y)
     (terrain :initarg :terrain
              :initform 'plain
              :accessor terrain)
     (climate :initarg :climate
              :initform 'temperate
              :accessor climate)
     (description :initarg :description
                  :accessor description)
     (features :accessor features)
     (scale :initarg :scale
            :initform 'midi  ;;; maxi 30mi, midi 5mi
            :reader scale)))

;;; climate types:
;;;   Arctic
;;;   Sub-arctic
;;;   Temperate
;;;   Sub-tropical
;;;   Tropical

;;; terrain types:
;;;   Water
;;;   Swamp
;;;   Desert
;;;   Plains
;;;   Forest
;;;   Hills
;;;   Mountains
