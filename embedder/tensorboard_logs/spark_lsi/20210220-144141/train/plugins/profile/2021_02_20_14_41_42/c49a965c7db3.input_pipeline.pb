	h?K6<8@h?K6<8@!h?K6<8@	??t?b????t?b??!??t?b??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6h?K6<8@?쟧/6@1p??;???A??S??IĴo??^??YH¾?D???*	    ?Z@2U
Iterator::Model::ParallelMapV2~6rݔ???!???oA@)~6rݔ???1???oA@:Preprocessing2F
Iterator::Model?W?L???!??rD?K@)˟o??1d??VI4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?i?WV???!???Gr?2@)???F???1???/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate^?Y-?ǔ?!.ަ-3@)3nj?????1V??_?h)@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicey?t??{?!?????@)y?t??{?1?????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip=?;k?]??!k???kF@)p???$t?1Ύ??`?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor_&???m?!<??K>[@)_&???m?1<??K>[@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?j????!? g@5@)???cw?b?1ѤG?j@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??t?b??I??q]X@Q??kC @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?쟧/6@?쟧/6@!?쟧/6@      ??!       "	p??;???p??;???!p??;???*      ??!       2	??S????S??!??S??:	Ĵo??^??Ĵo??^??!Ĵo??^??B      ??!       J	H¾?D???H¾?D???!H¾?D???R      ??!       Z	H¾?D???H¾?D???!H¾?D???b      ??!       JGPUY??t?b??b q??q]X@y??kC @