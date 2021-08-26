import HTSeq
import sys


def myhtseq(data, outdir):
	print(data)
	print(outdir)

def __main__():
	print(len(sys.argv))
	if(len(sys.argv) < 1) | (len(sys.argv) > 4) : 
		print('Wrong values')
		exit(-1)
	
	d1 = sys.argv[1]
	d2 = sys.argv[2]
	dout = sys.argv[3]

	print('first input :', sys.argv[1])
	print('second input :', sys.argv[2])
	print('HTSeq output :', sys.argv[3])
	
	first = myhtseq(d1, dout)
	second = myhtseq(d2, dout)



if __name__ == '__main__':
	__main__()
